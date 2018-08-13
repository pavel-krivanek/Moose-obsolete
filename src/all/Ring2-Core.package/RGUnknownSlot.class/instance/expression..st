accessing - backend
expression: aString

	self parent parent announceDefinitionChangeDuring: [ 
		self backend forBehavior setExpressionFor: self to: aString ].

