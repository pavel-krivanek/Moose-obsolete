initialize-release
initialize: capacity 
	 
	byType := Dictionary new: 24. 
	byName := IdentityDictionary new: capacity. 
	elements := OrderedCollection new: capacity