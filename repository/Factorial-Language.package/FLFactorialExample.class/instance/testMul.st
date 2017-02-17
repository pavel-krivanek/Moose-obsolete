testing
testMul
	self assert: (FLFactorialGrammar parse: self mul) = #('mult' #('n' 'm') '=' #('if' #('(' 'n' '==' '0' ')') 'then' '0' 'else' #('(' 'm' '+' #('(' 'mult' #(#('(' 'n' '-' '1' ')') 'm') ')') ')'))).
	self assert: (FLFactorialPrinter parse: self mul) = self mul.
	self assert: (FLFactorialCompiler parse: self mul) = (RBParser parseMethod: 'mult: n with: m
	^ n = 0
		ifTrue: [ 0 ]
		ifFalse: [ m + (self mult: n - 1 with: m) ]')