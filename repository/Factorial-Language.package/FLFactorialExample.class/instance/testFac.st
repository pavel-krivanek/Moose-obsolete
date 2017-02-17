testing
testFac
	self assert: (FLFactorialGrammar parse: self fac) = #('fac' #('n') '=' #('if' #('(' 'n' '==' '0' ')') 'then' '1' 'else' #('(' 'mult' #('n' #('(' 'fac' #(#('(' 'n' '-' '1' ')')) ')')) ')'))).
	self assert: (FLFactorialPrinter parse: self fac) = self fac.
	self assert: (FLFactorialCompiler parse: self fac) = (RBParser parseMethod: 'fac: n
	^ n = 0
		ifTrue: [ 1 ]
		ifFalse: [ self mult: n with: (self fac: n - 1) ]')