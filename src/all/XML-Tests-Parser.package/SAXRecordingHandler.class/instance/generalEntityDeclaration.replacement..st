handling - declaration
generalEntityDeclaration: aName replacement: aReplacement
	self messageRecorder
		recordMessageReceiver: self
		selector: #generalEntityDeclaration:replacement:
		arguments:
			(OrderedCollection new
				addLast: aName;
				addLast: aReplacement;
				yourself)