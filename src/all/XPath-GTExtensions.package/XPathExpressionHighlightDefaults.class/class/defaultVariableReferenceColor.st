accessing
defaultVariableReferenceColor
	^ defaultVariableReferenceColor
		ifNil: [defaultVariableReferenceColor := self textColorForShoutProperty: #globalVar]