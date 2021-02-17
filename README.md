#School Report

## Problem
School gives string of grades and report must return them counted. Strings may not be uniform and may have irregular values but they should all be accounted for.

#Examplar
"Green, Green, Amber, Red, Green" => "Green: 3\nAmber: 1\nRed: 1"


| Input | Output |
| :------------- | :------------- |
| 'Green' | "Green: 1" |
| 'Green, Green' | 'Green: 2' |
| 'Green, Green, Amber' | 'Green: 2\nAmber: 1' |
| 'Green, Green, Amber, Red' | 'Green: 2\nAmber: 1\nRed: 1' |
| "Green, Green, Amber, Red, Green" | "Green: 3\nAmber: 1\nRed: 1" |
| "Green,Dave,Whimsy,Red" | "Green: 1\nRed: 1\nUncounted: 2" |
| 'GREEN' | 'Green: 1' | #Case sensitivity
| ',' | 'No results given' |

* double comma's classed as white space
