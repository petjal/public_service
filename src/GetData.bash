#source ./config.properties
#echo "${mState}"
#echo "${mCounty}"
date ; date --utc ; hostname -f ; pwd ; whoami
echo this is https://github.com/petjal/public_service/edit/master/src/GetData.bash running...
find -maxdepth 5 | head -n 100
mStates="$(curl -s "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")"
#echo "${mStates}"
mStateData="$(echo "${mStates}" | grep "${mState}")"
echo
echo "${mStateData}"
#
mCounties="$(curl -s "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv")"
mCountyData="$(echo "${mCounties}" | grep "${mCounty}" | grep "${mState}")"
mCompareCity1="$(echo "${mCounties}" | grep "New York City")"
echo
echo "${mCountyData}"
echo
echo "${mCompareCity1}"
echo
ls -al ./out
touch ./out/touched.out
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
