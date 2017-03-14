accessing
currentElement: anElement
	self hasOpenElements
		ifTrue: [
			self openElements
				at: self totalOpenElements
				put: anElement]
		ifFalse: [self setExternalRootElement: anElement]