visiting
visitManyToOneProperty: fameProperty
	self initializeProperty: fameProperty with: ('FMMultivalueLink on: self opposite: #<1s>:' "with colon"
		expandMacrosWith: (self methodNameFor: fameProperty opposite)).
	self compileGetter: fameProperty.
	self compileManyToAnySetter: fameProperty.