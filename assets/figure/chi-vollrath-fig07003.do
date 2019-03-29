 twoway line VA_P_index year if code=="C" || line VA_P_index year if code=="Q" || line VA_P_index year if code=="M-N" || line VA_P_index year if code=="J", legend(label(1 "Manufacturing") label(2 "Health and social") label(3 "Prof. services") label(4 "Info. and comm.")) xtitle("Year") ytitle("Price (1970=100)") xlabel(1970(5)2015) ylabel(100(100)1100, format(%9.0f)) 
