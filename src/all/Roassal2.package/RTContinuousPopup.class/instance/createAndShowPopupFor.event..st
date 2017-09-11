initialization
createAndShowPopupFor: element event: event
	| popupPosition popup idealPosition g |
	self removeLastPopup.
	
	popup := self getNewPopupFor: event.
	
	
	"The following is useful when testing"
	event position isNil
		ifTrue: [ idealPosition := element position ]
		ifFalse: [ idealPosition := (element view canvas camera fromSpaceToPixel: event position)
			- ((popup width/2)@0) ].
	popupPosition := self closestPositionOf: popup from: idealPosition inView: element view.

	popup translateTopLeftTo: popupPosition.	
	pointers ifNotNil: [ 
		g := RTGroup new.
		pointers value: g value: event.
		g do: [:x | 
			element view add: x.
			popup add: x ]. ].
	
	self lastPopup: popup.
