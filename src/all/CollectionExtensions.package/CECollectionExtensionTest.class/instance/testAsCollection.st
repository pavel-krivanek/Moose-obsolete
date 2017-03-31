conversion
testAsCollection

	| collection |
	self assert: (Object new asCollection isKindOf: OrderedCollection).
	
	collection := Set new.
	self assert: collection asCollection equals: collection.
	self assert: (collection asCollection isKindOf: Set)