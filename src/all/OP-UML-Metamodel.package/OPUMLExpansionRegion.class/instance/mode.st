accessing
mode
	"The mode in which the ExpansionRegion executes its contents. If parallel, executions are concurrent. If iterative, executions are sequential. If stream, a stream of values flows into a single execution."
	^ mode ifNil: [ mode := OPUMLExpansionKind new iterative ]