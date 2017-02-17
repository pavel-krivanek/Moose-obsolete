meta
withMooseSubclasses
	mooseSubClasses ifNil: [ ^self withAllSubclasses ].
	^(mooseSubClasses copyWithAll: self withAllSubclasses) asSet