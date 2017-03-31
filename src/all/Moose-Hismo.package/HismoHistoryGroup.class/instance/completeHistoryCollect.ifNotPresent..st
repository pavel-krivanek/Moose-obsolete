public interface
completeHistoryCollect: aBlock ifNotPresent: anotherBlock
	
	| data |
	data := OrderedCollection new.
	self first referenceHistory versions
		do:
			[:eachReferenceVersion | 
			(self existsInReferenceVersion: eachReferenceVersion)
				ifTrue:
					[data
						addLast:
							(aBlock value: (self atReferenceVersion: eachReferenceVersion))]
				ifFalse: [data addLast: anotherBlock value]].
	^data