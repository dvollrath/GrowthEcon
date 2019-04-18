 twoway line G10gdppc year if countrycode=="USA" || line G10gdppc year if countrycode=="FRA" || line G10gdppc year if countrycode=="DEU", || line G10gdppc year if countrycode=="JPN", || line G10gdppc year if countrycode=="GBR", xtitle("Year") ytitle("10-year avg. growth in real GDP per capita") ylabel(-2(2)10, format(%3.1f)) xlabel(1960(10)2010 2014) legend(label(1 "United States") label(2 "France") label(3 "Germany") label(4 "Japan") label(5 "United Kingdom")) scheme(vollrath) 
