hooks
positionLabelAgainst: s
	"Argument is a trachel shape"
	self isTop
		ifTrue: [ TRConstraint stick: labelTrachel above: s ].
	self isBelow
		ifTrue: [ TRConstraint stick: labelTrachel below: s ].
	self isLeft
		ifTrue: [ TRConstraint stick: labelTrachel onTheLeftOf: s ].
	self isRight
		ifTrue: [ TRConstraint stick: labelTrachel onTheRightOf: s ].
	self isCenter
		ifTrue: [ TRConstraint stick: labelTrachel onTheCenterOf: s ].
	self isBottomLeft
		ifTrue: [ TRConstraint stick: labelTrachel onTheBottomLeftOf: s ]