adding
addAssignmentForReturn: val 
	| eT |
	eT := self extractedTypeForReturnInMethod: currentExtractedMethod.
	val isInteger 
		ifTrue: 
			[ self 
				withTranslatedIndex: val
				do: [ :idx | eT addReverseLinkedExtractedType: (typingResults at: idx) ] ]
		ifFalse: 
			[ (val isVariableBinding and: [ val key = #temp ]) 
				ifTrue: 
					[ eT addReverseLinkedExtractedType: ((localTypingResults at: currentExtractedMethod) at: val value + 1) ]
				ifFalse: 
					[ (val isVariableBinding and: [ val key = #return ]) 
						ifTrue: 
							[ eT addReverseLinkedExtractedType: (self extractedTypeForReturnInMethod: theClass >> val value) ]
						ifFalse: 
							[  (val isVariableBinding and: [ val key = #blockArg ])
							ifTrue: [
							]
						ifFalse: [(self assignmentTypeOf: val) ifNotNil: [ :result | eT addAssignment: result ] ] ] ]]