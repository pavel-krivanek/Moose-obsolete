running
computeTemporaryVariableCandidateListFor: anInvocation 
	 
	| roelTyperResult allCandidates classContainingInvocation tmpVarSymbol methodSelector compiledMethod key types |
	classContainingInvocation := Smalltalk at: (anInvocation receiver belongsTo belongsTo  name).
	tmpVarSymbol := anInvocation receiver name.
	methodSelector := anInvocation receiver belongsTo name.
	compiledMethod := classContainingInvocation methodDict at: methodSelector.
	roelTyperResult := (TypeCollector typeTmpsIn: compiledMethod  ofClass:  classContainingInvocation ) . 
	key := roelTyperResult keys detect: [:each | each = tmpVarSymbol asString].
	types := (roelTyperResult at: key) types.
	
	allCandidates := self allCandidatesFor: anInvocation .
	
	types isEmpty
	 	ifTrue: [
			anInvocation candidates: (self allCandidatesFor: anInvocation ).				
		]
		ifFalse: [
			allCandidates := allCandidates select: [:each | types includes: each belongsTo name].
			anInvocation candidates: allCandidates .
		].
	
	
	^ types 