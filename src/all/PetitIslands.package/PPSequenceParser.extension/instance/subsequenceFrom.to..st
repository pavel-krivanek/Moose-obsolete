*petitislands
subsequenceFrom: from to: to
	| interval dict |
	
	interval := from to: to.
	dict := self propertyAt: #subsequenceCache ifAbsentPut: [ Dictionary new ].
	^ dict at: interval ifAbsentPut: [
		(from = to) 
			ifTrue: [ parsers at: from ] 
			ifFalse: [ self class withAll: (parsers copyFrom: from to: to) ]
	].