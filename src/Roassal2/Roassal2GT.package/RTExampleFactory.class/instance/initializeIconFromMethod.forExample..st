private - creating examples
initializeIconFromMethod: aCompiledMethod forExample: aGTExample
	aGTExample icon ifNotNil: [ ^ self ].

	[ aGTExample form: (aGTExample methodResolver resolve: RTExampleMethodIcon example: self className: aCompiledMethod methodClass meta: aCompiledMethod methodClass isMeta selector: aCompiledMethod selector)  ]
		on: Error
		do: [ :exception | 
			aGTExample addProblem: (GTExampleError new 
				example: aGTExample;
				signaledException: exception;
				yourself) ]