accessing
defaultTagColor
	^ defaultTagColor
		ifNil: [defaultTagColor := self textColorForShoutProperty: #instVar]