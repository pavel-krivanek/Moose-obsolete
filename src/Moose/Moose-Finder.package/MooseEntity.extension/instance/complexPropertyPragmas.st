*Moose-Finder
complexPropertyPragmas
	| navProps definedProps |
	self mooseDescription
		ifNil: [ Error
				signal:
					'Moose description are not initialized. Have you refreshed the meta-model? (e.g., MooseModel resetMeta)' ].
	navProps := (Pragma
		allNamed: #navigation:
		from: self class
		to: MooseEntity)
		sorted: [ :a :b | (a argumentAt: 1) < (b argumentAt: 1) ].
	definedProps := (self mooseDescription allAttributes
		reject: [ :a | a type isPrimitive ])
		flatCollect: [ :prop | 
			(prop mmClass implementingClass >> prop implementingSelector) pragmas
				select: [ :each | each keyword beginsWith: 'MSEProperty:' ] ].
	^ (OrderedCollection withAll: definedProps)
		addAll: navProps;
		yourself