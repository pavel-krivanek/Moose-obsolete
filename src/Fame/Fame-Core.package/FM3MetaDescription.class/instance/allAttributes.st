accessing-query
allAttributes
	<MSEProperty: #allAttributes type: 'FM3.Property'>
	<multivalued>
	<derived>
	
	| nameDict |
	nameDict := Dictionary new: 60. "estimated initial size."
	self allAttributesDo: [ :each |
		nameDict at: each name ifAbsentPut: [ each ]].
	^Array withAll: nameDict values