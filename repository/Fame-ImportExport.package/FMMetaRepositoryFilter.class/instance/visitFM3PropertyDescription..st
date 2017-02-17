visiting
visitFM3PropertyDescription: aFM3PropertyDescription

	(self newMetaRepository includes: aFM3PropertyDescription) ifTrue: [^ self ].
	
	newMetaRepository add: aFM3PropertyDescription.
	(aFM3PropertyDescription type isPrimitive or: [aFM3PropertyDescription type isRoot ]) ifFalse: [
		aFM3PropertyDescription type accept: self.
		aFM3PropertyDescription type allSubclassesDo: [:eachSubclass | eachSubclass accept: self ]].
	aFM3PropertyDescription package notNil ifTrue: [aFM3PropertyDescription package accept: self]