testing
testAck
	self assert: (FLFactorialGrammar parse: self ack) = #('ack' #('m' 'n') '=' #('if' #('(' 'm' '==' '0' ')') 'then' #('(' 'n' '+' '1' ')') 'else' #('if' #('(' 'n' '==' '0' ')') 'then' #('(' 'ack' #(#('(' 'm' '-' '1' ')') '1') ')') 'else' #('(' 'ack' #(#('(' 'm' '-' '1' ')') #('(' 'ack' #('m' #('(' 'n' '-' '1' ')')) ')')) ')')))).
	self assert: (FLFactorialPrinter parse: self ack) = self ack.
	self assert: (FLFactorialCompiler parse: self ack) = (RBParser parseMethod: 'ack: m with: n
	^ m = 0
		ifTrue: [ n + 1 ]
		ifFalse: [ 
			n = 0
				ifTrue: [ self ack: m - 1 with: 1 ]
				ifFalse: [ self ack: m - 1 with: (self ack: m with: n - 1) ] ]')