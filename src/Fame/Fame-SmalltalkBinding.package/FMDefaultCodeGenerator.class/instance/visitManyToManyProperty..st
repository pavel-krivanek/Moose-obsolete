visiting
visitManyToManyProperty: fameProperty 
	self initializeProperty: fameProperty with: ('FMMultiMultivalueLink on: self opposite: #<1s>' "no colon!"
		expandMacrosWith: (self methodNameFor: fameProperty opposite)).
	self compileGetter: fameProperty.
	self compileManyToAnySetter: fameProperty.