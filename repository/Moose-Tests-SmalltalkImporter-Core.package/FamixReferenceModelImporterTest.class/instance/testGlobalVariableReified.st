reference model reification
testGlobalVariableReified
	"self debug: #testGlobalVariableReified"
	
	| globalVariable |
	globalVariable := self model entityNamed: #Transcript.
	self assert: globalVariable isNil not