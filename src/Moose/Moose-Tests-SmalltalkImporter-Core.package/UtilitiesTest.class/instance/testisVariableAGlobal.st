tests
testisVariableAGlobal
	"self run: #testisVariableAGlobal"
	"self debug: #testisVariableAGlobal"
	
	self assert: (FAMIXNameResolver isVariableAGlobal: 'Transcript').
	self assert: (FAMIXNameResolver isVariableAGlobal: 'Smalltalk').
	self deny: (FAMIXNameResolver isVariableAGlobal: 'Object')