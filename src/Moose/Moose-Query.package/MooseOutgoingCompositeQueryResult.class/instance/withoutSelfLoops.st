filtering
withoutSelfLoops

	^ self class
			on: self receiver
			withInvocations: (invocationStorage perform: #withoutSelfLoops )
			withOtherDependencies: (storage perform: #withoutSelfLoops )