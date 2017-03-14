instance characterization
instanceCharacterization
	^((self aliases
		select: [ :each | each creator notNil ])
			collect: [ :each | each creator trace ]) asSet size