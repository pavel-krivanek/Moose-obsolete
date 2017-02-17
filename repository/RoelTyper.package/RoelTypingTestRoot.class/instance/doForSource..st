auxiliary
doForSource: src
	| m |
	m := (Compiler new
		compile: 'gen ' , src
		in: self class
		notifying: nil
		ifFail: [self error: 'Error during compilation of generated method.'])
		generate.
	^self processMethod: m