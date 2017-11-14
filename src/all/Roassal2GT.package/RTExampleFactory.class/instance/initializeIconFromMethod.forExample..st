private - creating examples
initializeIconFromMethod: aCompiledMethod forExample: aGTExample
	aGTExample icon ifNotNil: [ ^ self ].

	[ aGTExample form: (aGTExample methodResolverClass resolve: RTExampleMethodIcon example: self className: aCompiledMethod methodClass meta: aCompiledMethod methodClass isMeta selector: aCompiledMethod selector)  ]
		on: Error
		do: [ :exception | 
			aGTExample addProblem: (GtExampleError new 
				example: aGTExample;
				signaledException: exception;
				yourself) ]