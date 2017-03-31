running
runSelector: aSelector
	"Hack to let tasks decide whether to run or runWithProgress (see CompositeTask)"
	
	^ self perform: aSelector