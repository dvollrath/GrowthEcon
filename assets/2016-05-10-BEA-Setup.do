// Set up
cd /users/dietz/dropbox/data // change to where you save the datasets
global data "/users/dietz/dropbox/data/"
global fig "/users/dietz/dropbox/project/growthbook/" // change to where you want the figures saved
clear

// Set flags for determining which data to use
local lag = 10 // number of years to do growth calculation over
local level = 1 // level of disaggregation "4" is the deepest level, smaller numbers are higher levels

// Save data files to public folder to share
use "$data/bea_fte_data.dta"
save "$fig/bea_fte_data.dta", replace
clear
use "$data/bea_ip_data.dta"
save "$fig/bea_ip_data.dta", replace

// Merge with FTE data
merge m:1 bea_code using bea_fte_data.dta
keep if _merge==3
drop _merge

// Reshape to be industry/year observation
reshape long y fte, i(bea_code) j(year)

// Rename several industries for clarity
replace bea_industry="General Federal" if bea_code=="A4378C0"
replace bea_industry="General State/Local" if bea_code=="A4383C0"
replace bea_industry="Federal Gov Enterprise" if bea_code=="B4381C0"
replace bea_industry="State/Local Gov Enterprise" if bea_code=="B4386C0"
replace bea_industry="Federal Civilian" if bea_code=="B4379C0"

label variable bea_industry "BEA Industry Name"

// Generate numeric ID variable for industries
egen bea_id = group(bea_code)

// Only keep data at the designated level
keep if bea_level_`level' == 1

// Generate productivity meaures
gen fte_prod = y/fte // Generate comparable labor productivity measures
bysort year: egen fte_sum = sum(fte)
gen fte_share = fte/fte_sum // share of total FTE in a year

// Do productivity breakdown
xtset bea_id year // set up to do time-series operators
gen lag_fte_prod = L`lag'.fte_prod
gen lag_fte_share = L`lag'.fte_share
gen D_fte_prod = fte_prod - L`lag'.fte_prod 
gen D_fte_share = fte_share - L`lag'.fte_share 
label variable D_fte_prod "Change in Prod."
label variable D_fte_share "Change in FTE share"

gen within = [L`lag'.fte_share*D_fte_prod] // productivity growth within sectors only
gen across = [L`lag'.fte_prod*D_fte_share] // productivity growth through reallocation 
gen covar  = [D_fte_prod*D_fte_share] // productivity growth through "good" reallocation

// Create lists of top/bottom 10
capture drop *_rank
foreach v in lag_fte_prod lag_fte_share D_fte_prod D_fte_share within across covar {
	bysort year: egen `v'_rank = rank(-`v')
	sort year `v'_rank
	gen `v'_round = round(`v',.0001)
	list bea_industry `v'_round if `v'_rank<11 & year==2014, string(35) separator(0) noobs divider
	summ `v'_rank if year==2014
	list bea_industry `v'_round if `v'_rank>r(max)-10 & year==2014, string(35) separator(0) noobs divider
}

save "$data/bea_ip_data_calc.dta", replace

// Roll up to yearly totals
collapse (sum) y fte fte_share within across covar, by(year)
tsset year // reset with only the time series dimension
gen fte_prod = y/fte // this is now aggregate labor productivity by year
gen D_fte = fte - L`lag'.fte
gen D_y = y - L`lag'.y
gen D_fte_prod = fte_prod - L`lag'.fte_prod 
gen D_fte_check = within + across + covar

gen g_within = (within)/L`lag'.fte_prod
gen g_across = (across)/L`lag'.fte_prod
gen g_covar = (covar)/L`lag'.fte_prod
gen g_fte_prod = D_fte_prod/L`lag'.fte_prod
gen g_y = D_y/L`lag'.y
gen g_fte = D_fte/L`lag'.fte

label variable g_fte_prod "Value-added per FTE"
label variable g_within "Within-sector"
label variable g_across "Across-sector"
label variable g_covar "Covariance"
label variable g_y "Value-added growth"
label variable g_fte "FTE growth"

gen graph = 0
replace graph=1 if year>=1997+`lag' & year!=2015

line g_fte_prod year if graph==1, clwidth(thick) color(black) ///
	|| line g_within year if graph==1, clwidth(thick) clcolor(black) clpattern(dash) ///
	|| line g_across year if graph==1, clwidth(thick) clcolor(gray) ///
	|| line g_covar year if graph==1, clwidth(thick) clcolor(gray) clpattern(dash) ///
	graphregion(color(white)) ytitle("Rolling `lag'-year Growth (Total %)") xtitle("Year") ///
	ylabel(,angle(0) format(%9.2f))  title("US Value-added per FTE")
graph export "$fig/fig_bea_decomp_`lag'.png", replace as(png)

line g_fte year if graph==1, clwidth(thick) color(black) ///
	|| line g_y year if graph==1, clwidth(thick) clcolor(black) clpattern(dash) ///
	graphregion(color(white)) ytitle("Rolling `lag'-year Growth (Total %)") xtitle("Year") ///
	ylabel(,angle(0) format(%9.2f))  title("US Value-added and FTE")
graph export "$fig/fig_bea_growth_`lag'.png", replace as(png)
	
