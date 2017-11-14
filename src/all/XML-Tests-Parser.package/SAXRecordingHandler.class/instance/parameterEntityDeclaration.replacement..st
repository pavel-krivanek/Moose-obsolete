handling - declaration
parameterEntityDeclaration: aName replacement: aReplacement
	self
		recordMessageReceiver: self
		selector: #parameterEntityDeclaration:replacement:
		arguments:
			(OrderedCollection new
				addLast: aName;
				addLast: aReplacement;
				yourself)