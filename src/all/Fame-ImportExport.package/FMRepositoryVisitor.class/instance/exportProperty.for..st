exporting
exportProperty: property for: each
	| values |
	(self shouldIgnoreProperty: property) ifTrue: [ ^ self ].
	values := repository get: property element: each.
	(self shouldIgnoreProperty: property withAll: values)
		ifTrue: [ ^ self ].
	self exportProperty: property withAll: values