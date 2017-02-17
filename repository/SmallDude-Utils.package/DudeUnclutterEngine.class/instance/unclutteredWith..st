engine
unclutteredWith: minDist 
	"unclutter: anArray withMinDist: minDist andMaxIterations: itCount andUpperLimit: upperLimit" 
	 
	| mod itc uData | 
	itc := 0. 
	mod := true. 
	uData := data1. 
	[mod and: [itc < itCount]] 
		whileTrue: 
			[| uuData | 
			"self halt: 'cucu'." 
			uuData := self iteration: minDist on: uData. 
			mod := (uData == uuData) not. 
			uData := uuData. 
			itc := itc + 1]. 
	^mod 
		ifTrue: [^data1] 
		ifFalse: [^uData]	"failed"	"success"