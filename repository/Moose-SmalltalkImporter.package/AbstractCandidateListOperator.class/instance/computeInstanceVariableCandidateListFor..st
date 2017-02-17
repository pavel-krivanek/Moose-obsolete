running
computeInstanceVariableCandidateListFor: anInvocation 
	 
	| roelTyperResult allCandidates classContainingInvocation instVarSymbol |
	classContainingInvocation := Smalltalk at: (anInvocation receiver belongsTo name).
	instVarSymbol := anInvocation receiver name.
	roelTyperResult := (TypeCollector typeInstvar: instVarSymbol ofClassWithLookup:  classContainingInvocation ) types. 
	"roelTyperResult := (TypeCollector typeInstvar: instVarSymbol ofClass: (self containerOf: instVarSymbol asString startingAt: classContainingInvocation )) assignments. "
	
	allCandidates := self allCandidatesFor: anInvocation .
	
	roelTyperResult isEmpty
	 	ifTrue: [
			anInvocation candidates: (self allCandidatesFor: anInvocation ).				
		]
		ifFalse: [
			allCandidates := allCandidates select: [:each | roelTyperResult includes: each belongsTo name].
			anInvocation candidates: allCandidates .
		].
	
	
	^ roelTyperResult 