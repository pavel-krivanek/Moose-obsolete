heuristics
handleAssignment: val forTmp: index in: aCompiledMethod
	"Cannot use ifNotNil: with argument in Squeak, so use a temporary instead."
	val isInteger 
		ifTrue: 
			[ self 
				withTranslatedIndex: val
				do: 
					[ :idx | 
					((localTypingResults at: aCompiledMethod) at: index + 1) addReverseLinkedExtractedType: (typingResults at: idx).
					 ] ]
		ifFalse: 
			[ (val isVariableBinding and: [ val key = #temp ]) 
				ifTrue: 
					[ ((localTypingResults at: aCompiledMethod ) at: index + 1) addReverseLinkedExtractedType: ((localTypingResults at: currentExtractedMethod) at: val value + 1).
					 ]
				ifFalse: 
					[ (val isVariableBinding and: [ val key = #return ]) 
						ifTrue: 
							[ ((localTypingResults at: aCompiledMethod ) at: index + 1) addReverseLinkedExtractedType: (self extractedTypeForReturnInMethod: theClass >> val value) ]
						ifFalse: [
							 (val isVariableBinding and: [ val key = #blockArg ]) 
							ifFalse: [(self assignmentTypeOf: val) ifNotNil: 
						[ :result | 
						self 
							addAssignment: result
							toTmp: index
							in: aCompiledMethod ] ] ]]]