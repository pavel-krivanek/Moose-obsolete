testing
testFib
	self assert: (FLFactorialGrammar parse: self fib) = #('fib' #('n') '=' #('if' #('(' 'n' '==' '0' ')') 'then' '0' 'else' #('if' #('(' 'n' '==' '1' ')') 'then' '1' 'else' #('(' #('(' 'fib' #(#('(' 'n' '-' '1' ')')) ')') '+' #('(' 'fib' #(#('(' 'n' '-' '2' ')')) ')') ')')))).
	self assert: (FLFactorialPrinter parse: self fib) = self fib.
	self assert: (FLFactorialCompiler parse: self fib) = (RBParser parseMethod: 'fib: n
	^ n = 0
		ifTrue: [ 0 ]
		ifFalse: [ 
			n = 1
				ifTrue: [ 1 ]
				ifFalse: [ (self fib: n - 1) + (self fib: n - 2) ] ]')