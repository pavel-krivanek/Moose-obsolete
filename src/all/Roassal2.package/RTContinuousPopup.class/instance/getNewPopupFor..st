initialization
getNewPopupFor: evt
	"the super of this method recibes an element i recibe an event of roassal"
	| popupGroup |
	popupGroup := self createPopupFor: evt.
	popupGroup do: [ :e | 
		view add: e.
		e trachelShape setAsFixed. ].
	evt signalUpdate.
	^ popupGroup