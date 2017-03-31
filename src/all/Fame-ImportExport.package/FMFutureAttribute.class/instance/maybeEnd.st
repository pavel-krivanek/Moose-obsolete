parsing
maybeEnd
	
	self flag: #faultTolerantParser. "this makes the parser tolerant so some defects in MSE files, not sure we always want that"
	tally = 0 ifTrue: [
		| property |
		property := owner metaDescription attributeNamed: name ifAbsent: [
			owner instance handleFameProperty: name value: values.
			^ self ].
		property setOn: owner instance values: values ]
