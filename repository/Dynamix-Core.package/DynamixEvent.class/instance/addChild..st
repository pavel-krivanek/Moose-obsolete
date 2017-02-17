accessing
addChild: event

	children := self children copyWith: event.
	^self lastChild. 