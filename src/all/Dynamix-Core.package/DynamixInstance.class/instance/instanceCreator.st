instance characterization
instanceCreator
	^self rootAlias ifNotNil: [ :alias |
		alias creator ifNotNil: [ :activation | activation trace ] ]