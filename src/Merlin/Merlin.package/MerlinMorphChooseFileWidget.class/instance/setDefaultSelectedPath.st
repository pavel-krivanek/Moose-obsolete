accessing - morph contents
setDefaultSelectedPath

	self wizardPart selectedPathName ifNotNil: [
		self fileDialog selectPathName: self wizardPart selectedPathName asFileReference parent fullName ]
		