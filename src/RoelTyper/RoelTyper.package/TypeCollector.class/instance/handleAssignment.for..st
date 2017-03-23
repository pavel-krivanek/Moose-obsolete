heuristics
handleAssignment: val for: index 
	val isInteger 
		ifTrue: 
			[ self 
				withTranslatedIndex: val
				do: 
					[ :idx | 
					(typingResults at: index + 1) addReverseLinkedExtractedType: (typingResults at: idx) ] ]
		ifFalse: 
			[ (val isVariableBinding and: [ val key = #temp ]) 
				ifTrue: 
					[ (typingResults at: index + 1) addReverseLinkedExtractedType: ((localTypingResults at: currentExtractedMethod) at: val value + 1) ]
				ifFalse: 
					[ (val isVariableBinding and: [ val key = #return ]) 
						ifTrue: 
							[ (typingResults at: index + 1) addReverseLinkedExtractedType: (self extractedTypeForReturnInMethod: theClass >> val value) ]
						ifFalse: 
							[ (val isVariableBinding and: [ val key = #blockArg ]) 
							ifFalse: [(self assignmentTypeOf: val) ifNotNil: 
								[ :result | 
								self 
									addAssignment: result
									to: index ] ] ] ]]