#source ./config.properties
#echo "${mState}"
#echo "${mCounty}"
date ; date --utc ; hostname -f ; pwd ; whoami
env
find -maxdepth 5 | head -n 100
mStates="$(curl -s "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")"
#echo "${mStates}"
mStateData="$(echo "${mStates}" | grep "${mState}")"
echo
echo "${mStateData}" > ./out/output_$(date --utc +%Y%m%d_%H%M%SZ).out
#
mCounties="$(curl -s "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv")"
mCountyData="$(echo "${mCounties}" | grep "${mCounty}" | grep "${mState}")"
echo
echo "${mCountyData}" >> ./out/output_$(date --utc +%Y%m%d_%H%M%SZ).out
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
echo # for git Actions output drops last line?
