validating
validatePI: aTargetString data: aDataString
	self hasCurrentElementValidator
		ifTrue: [
			self currentElementValidator
				validatePI: aTargetString
				data: aDataString]