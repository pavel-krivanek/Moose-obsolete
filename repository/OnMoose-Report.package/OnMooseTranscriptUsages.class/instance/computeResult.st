as yet unclassified
computeResult
	| transcript allTranscriptAccessors |
	transcript := self model allGlobalVariables entityNamed: #Transcript.
	allTranscriptAccessors := transcript incomingAccesses collectAsSet: [ :anAccess | anAccess accessor ].
	^ (allTranscriptAccessors
		reject: [ :each | each parentType isStub or: [ 
				self classesToIgnore anySatisfy: [ :toIgnore | 
					toIgnore match: each parentType name ] ] ]) asMooseGroup