tests
testCopy
	| mapper copy |

	mapper := self newMapperWithMappings.
	copy := mapper copy.
	self
		deny: mapper == copy;
		deny: mapper elementClassMap == copy elementClassMap;
		assert: mapper elementClassMap = copy elementClassMap.

	mapper elementClassMap values
		with: copy elementClassMap values
		do: [:classOrCollection :classOrCollectionCopy |
			"the collection values need to be copied so any new mappings
			in either the copy or original don't affect the other"
			classOrCollection isCollection
				ifTrue: [
					self
						deny: classOrCollection == classOrCollectionCopy;
						assert: classOrCollection = classOrCollectionCopy]
				ifFalse: [
					self deny: classOrCollection == classOrCollectionCopy]].

	mapper
		mapElement: 'test'
		toClass: self otherElementClass.
	self deny: mapper elementClassMap = copy elementClassMap.