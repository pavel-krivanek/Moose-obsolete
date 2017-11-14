handling - content
processingInstruction: aTargetString data: aDataString
	self
		recordMessageReceiver: self
		selector: #processingInstruction:data:
		arguments:
			(OrderedCollection new
				addLast: aTargetString;
				addLast: aDataString;
				yourself)