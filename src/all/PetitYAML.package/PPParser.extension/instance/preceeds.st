*PetitYAML
preceeds
	^ self >=> [ :context :cc |
		| memento result |
		(context position = 0) ifTrue: [ 
			PPFailure message: 'nothing preceeds start of stream' context: context 
		] ifFalse: [ 
			memento := context remember.
			
			context back	.
			result := cc value.
			
			context restore: memento.
			result
		]
	]