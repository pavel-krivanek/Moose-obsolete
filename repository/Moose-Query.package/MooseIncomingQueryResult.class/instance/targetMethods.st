accessing
targetMethods
	"Only valid if dependencies are invocations"
	
	^ storage flatCollectAsSet: [ :invo | invo candidates ]