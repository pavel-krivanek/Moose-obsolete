running
computeCandidateListFor: anInvocation 
	"this method will dispatch the work according anInvogroups  reveiver type. Each subclass implements a different strategy according what you want to import: maybe you don't want to import any candidates, maybe only for receivers enough simple to compute easily the list ('self', 'super', a Class) , ..."
	^ self subclassResponsibility 