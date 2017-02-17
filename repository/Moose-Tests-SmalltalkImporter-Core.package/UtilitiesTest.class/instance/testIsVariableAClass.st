tests
testIsVariableAClass
	"self run: #testIsVariableAClass"
	"self debug: #testIsVariableAClass"
	
	self assert: (FAMIXNameResolver isVariableAClass: self class name).
	self deny: (FAMIXNameResolver isVariableAClass: #Transcript)