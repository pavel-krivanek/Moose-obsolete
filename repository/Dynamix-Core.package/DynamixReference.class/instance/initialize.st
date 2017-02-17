initialize-release
initialize 
	super initialize.
	activationsWithReceiver := FMMultivalueLink on: self opposite: #receiver:.
	activationsWithReturn := FMMultivalueLink on: self opposite: #return:.
	activationsWithArgument := FMMultiMultivalueLink on: self opposite: #arguments