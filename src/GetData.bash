. ./config.properties
echo "${mState}"
echo "${mCounty}"
#mStates="$(curl -s "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")"
#echo "${mStates}"
#mState="$(echo "${mStates}" | grep Massachusetts)"
#echo "${mState}"
#
#mCounties="$(curl -s "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv")"
#mCounty="$(echo "${mCounties}" | grep Essex | grep Massachusetts)"
#echo "${mCounty}"
#echo
#echo "TODO: create config file (like, to choose State, County), then read input from that."
#echo "TODO: move this complexity to a bash script file, and then just call that as a single line script."
#echo "TODO: cut stack of dates from mState, then for each date,
#print date (1 column), 
#grab states values (2 columns), 
#grab county values if present (2 columns),
#calc daily new (4 columns),
#output 9 columns to csv.
#ToDo: try to push into predesigned graphing/charting tool, maybe Google Sheets?"
