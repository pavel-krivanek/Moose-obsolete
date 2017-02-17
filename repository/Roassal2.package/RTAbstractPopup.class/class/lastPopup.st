lastPopup
lastPopup
	"Return the group of elements that have been recently added as a popup"
	^ lastPopup isNil
		ifTrue: [ nil ]
		ifFalse: [ lastPopup ]
