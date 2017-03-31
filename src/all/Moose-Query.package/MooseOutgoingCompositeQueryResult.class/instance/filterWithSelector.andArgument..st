private
filterWithSelector: aSelector andArgument: aScope
	^ self class
			on: self receiver
			withInvocations: (invocationStorage perform: aSelector with: aScope )
			withOtherDependencies: (storage perform: aSelector with: aScope )