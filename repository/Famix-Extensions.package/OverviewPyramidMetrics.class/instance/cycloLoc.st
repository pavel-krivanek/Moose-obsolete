accessing - metrics ratio
cycloLoc

	"Intrinsic operation complexity (CYCLO/Code Line). Characterizes how much conditional complexity we are to expect in operations"
	^ self loc isZero 
		ifTrue: [ ^ -1 ]
		ifFalse: [ self truncatedFloatForFraction: (self cyclo/ self loc) ]