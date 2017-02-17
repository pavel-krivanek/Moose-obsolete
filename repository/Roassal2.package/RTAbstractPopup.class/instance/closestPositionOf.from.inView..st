utility
closestPositionOf: popup from: position inView: aView
	"Return the closest position for el to realPosition to be entierely visible in the view"
	"position is the location in the space"

	| idealVirtualPosition virtualPositionX virtualPositionY winSize |
	idealVirtualPosition := position.
	winSize := aView canvas extent.
	"Happens if we are in a test"
	winSize ifNil: [ winSize := 500 @ 500 ].
	"Check if the element is within the width of the view"
	virtualPositionX := 
		((idealVirtualPosition x + popup width + self popupOffset x) < winSize x) 
			ifTrue: [ idealVirtualPosition x + self popupOffset x ]
			ifFalse: [ winSize x - popup width - self popupOffset x ].
	virtualPositionX < 0
		ifTrue: [ virtualPositionX := self popupOffset x ].

	virtualPositionY := 
		((idealVirtualPosition y + popup height + self popupOffset y) < winSize y) 
			ifTrue: [ idealVirtualPosition y + self popupOffset y ]
			ifFalse: [ idealVirtualPosition y - popup height - self popupOffset y ].
	virtualPositionY  < 0
		ifTrue: [ virtualPositionY := self popupOffset y ].

	
	^ virtualPositionX @ virtualPositionY