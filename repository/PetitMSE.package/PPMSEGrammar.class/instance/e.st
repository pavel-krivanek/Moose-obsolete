basic
e
	^ ($e asParser / $E asParser) , ($- asParser / $+ asParser) optional , natural