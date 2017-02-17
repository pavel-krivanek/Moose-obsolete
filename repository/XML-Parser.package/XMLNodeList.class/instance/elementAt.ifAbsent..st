accessing
elementAt: aName ifAbsent: aBlock
	self elementsDo: [:each |
		(each isNamed: aName)
			ifTrue: [^ each]].
	^ aBlock value.