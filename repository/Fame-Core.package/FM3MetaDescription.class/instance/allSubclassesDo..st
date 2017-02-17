accessing
allSubclassesDo: aBlock

	self subclasses do: [:each | 
		aBlock value: each.
		each allSubclassesDo: aBlock ]