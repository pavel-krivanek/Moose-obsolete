enumerating
completeHistoryCollect: aBlock ifNotPresent: anotherBlock
	"traverses the referenceHistory and collects by aBlock. If the current history does not exist anotherBlock is collected"
	
	| data |
	data := OrderedCollection new.
	self referenceHistory versions
		do:
			[:eachReferenceVersion | 
			(self existsInReferenceVersion: eachReferenceVersion)
				ifTrue:
					[data
						addLast:
							(aBlock value: (self atReferenceVersion: eachReferenceVersion))]
				ifFalse: [data addLast: (anotherBlock value: eachReferenceVersion)]].
	^data