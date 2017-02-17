failures
furthestFailure
	" the furthest failure encountered while parsing the input stream "
	
	"^ self globalAt: #furthestFailure ifAbsent: [ nil ]"
	"performance optimization:"
	^ furthestFailure