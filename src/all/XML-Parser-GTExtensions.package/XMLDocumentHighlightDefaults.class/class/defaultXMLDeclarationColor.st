accessing
defaultXMLDeclarationColor
	^ defaultXMLDeclarationColor
		ifNil: [defaultXMLDeclarationColor := self textColorForShoutProperty: #primitive]