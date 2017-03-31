heuristics
handleAssignment: val forTmp: index 
	"Cannot use ifNotNil: with argument in Squeak, so use a temporary instead."
	
	(localTypingResults at: currentExtractedMethod) at: index + 1 ifAbsent: [
		self flag: 'bug here. For now just do nothing. uncomment the halt to run the example'.
		"this case seems to be broken for now. "
		"Try for example: 
			TypeCollector typeInstvar:  #lastStepMessage ofClassWithLookup:  WorldState "
		"self halt."
		^ self.
		].
	
	val isInteger 
		ifTrue: 
			[ self 
				withTranslatedIndex: val
				do: 
					[ :idx | 
					((localTypingResults at: currentExtractedMethod) at: index + 1) addReverseLinkedExtractedType: (typingResults at: idx) ] ]
		ifFalse: 
			[ (val isVariableBinding and: [ val key = #temp ]) 
				ifTrue: 
					[ ((localTypingResults at: currentExtractedMethod ) at: index + 1) addReverseLinkedExtractedType: ((localTypingResults at: currentExtractedMethod) at: val value + 1) ]
				ifFalse: 
					[ (val isVariableBinding and: [ val key = #return ]) 
						ifTrue: 
							[ ((localTypingResults at: currentExtractedMethod ) at: index + 1) addReverseLinkedExtractedType: (self extractedTypeForReturnInMethod: theClass >> val value) ]
						ifFalse: [
							 (val isVariableBinding and: [ val key = #blockArg ]) 
							ifFalse: [(self assignmentTypeOf: val) ifNotNil: 
						[ :result | 
						self 
							addAssignment: result
							toTmp: index ] ] ]]]