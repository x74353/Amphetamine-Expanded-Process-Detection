on getAllRunningProcs(inputString)
	
	set resultString to ""
	
	set resultString to do shell script "(ps ax -c | awk -v p='COMMAND' 'NR==1 {n=index($0, p); next} {print substr($0, n)}');"
	
	return resultString
	
end getAllRunningProcs