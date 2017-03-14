accessing - morph contents
setValidExtensions

	self wizardPart validExtensions ifNotNil: [
		self fileDialog validExtensions: self wizardPart validExtensions
		].
		