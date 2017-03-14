accessing
targetClasses
	
	"flatten targets as we receive candidates instead of single elements for incoming invocations"
	^ self targets deepFlatten collectAsSet: #typeScope