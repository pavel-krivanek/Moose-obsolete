handling
handlePI: aTargetString data: aDataString
	(self elementNester isInElement
		and: [self isValidating])
		ifTrue: [
			self validator
				validatePI: aTargetString
				data: aDataString].

	self saxHandler 
		processingInstruction: aTargetString
		data: aDataString.