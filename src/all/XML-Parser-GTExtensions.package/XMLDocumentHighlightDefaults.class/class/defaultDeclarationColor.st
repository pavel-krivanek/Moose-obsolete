accessing
defaultDeclarationColor
	^ defaultDeclarationColor
		ifNil: [defaultDeclarationColor := self textColorForShoutProperty: #super]