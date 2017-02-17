validating
validatePrefixesOfAttributes: anAttributeCollection
	^ self
		validatePrefixesOfAttributes: anAttributeCollection asArray
		from: 1
		to: anAttributeCollection size