private
propertyLabel: aFM3Property
	
	^ String streamContents: [ :str |
		( aFM3Property isDerived ) ifTrue: [ str nextPut: $/ ].
		str nextPutAll: aFM3Property name copy.
		str nextPut: $: ; nextPut: $ ; nextPutAll: aFM3Property type name.
		( aFM3Property isMultivalued ) ifTrue: [ str nextPut: $* ].
		( aFM3Property hasOpposite ) ifTrue: [ str nextPutAll: ' -> ', aFM3Property opposite name ]		
	]
