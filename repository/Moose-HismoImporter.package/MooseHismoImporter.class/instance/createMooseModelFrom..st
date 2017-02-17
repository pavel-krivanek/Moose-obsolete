creating
createMooseModelFrom: stream

	self importingContext ifNotNil: [ 
		^ MooseModel new 
			importFromMSEStream: stream
			filteredBy: self importingContext ].
	^ MooseModel new importFromMSEStream: stream