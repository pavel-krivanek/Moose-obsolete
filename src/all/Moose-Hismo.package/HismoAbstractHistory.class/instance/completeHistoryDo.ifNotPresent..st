enumerating
completeHistoryDo: aBlock ifNotPresent: anotherBlock 
	"traverses the referenceHistory and collects by aBlock. If the current
	history does not exist anotherBlock is collected"
	
	self referenceHistory versions
		do: [:eachReferenceVersion | (self existsInReferenceVersion: eachReferenceVersion)
				ifTrue: [aBlock
						value: (self atReferenceVersion: eachReferenceVersion)]
				ifFalse: [anotherBlock value: eachReferenceVersion]]