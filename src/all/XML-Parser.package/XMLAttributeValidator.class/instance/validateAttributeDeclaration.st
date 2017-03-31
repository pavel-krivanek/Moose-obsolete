validating
validateAttributeDeclaration
	(self attribute at: 1) == $x "optimization"
		ifTrue: [
			(self attribute = 'xml:id')
				ifTrue: [^ self validateXMLIDAttributeDeclaration].
			(self attribute = 'xml:space')
				ifTrue: [^ self validateXMLSpaceAttributeDeclaration]].

	self defaultValidator isValue
		ifTrue: [	
			self validateAttributeDefaultValue:
				self defaultValidator value].