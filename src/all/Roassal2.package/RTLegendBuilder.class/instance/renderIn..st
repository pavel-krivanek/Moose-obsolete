hooks
renderIn: aView
	| myGroup elementsInTheViewWithoutTheLegend |
	super renderIn: aView.
	isOnDemand
		ifTrue: [ ^ self renderOnDemandIn: aView ].
	elementsInTheViewWithoutTheLegend := aView elements.
	myGroup := self group.
	legendElement := self backgroundBoxElement.
	aView add: legendElement.
	myGroup do: [ :g | aView addAll: g ].
	RTNest new on: legendElement nest: myGroup.
	self isBelow
		ifTrue: [ TRConstraint
				move: legendElement
				below: (RTGroup withAll: elementsInTheViewWithoutTheLegend).
			legendElement translateBy: 0 @ offset ].
	self isRight
		ifTrue: [ RTConstraint
				move: legendElement
				onTheRightOf: (RTGroup withAll: elementsInTheViewWithoutTheLegend).
			legendElement translateBy: offset @ 0 ].
	self isLeft
		ifTrue: [ TRConstraint
				move: legendElement
				onTheLeftOf: (RTGroup withAll: elementsInTheViewWithoutTheLegend).
			legendElement translateBy: offset @ 0 ].
	legendElement @ RTDraggable.
	isFixed
		ifTrue: [ | els |
			els := aView elements
				copyWithoutAll: elementsInTheViewWithoutTheLegend.
			els do: [ :e | e trachelShape setAsFixed ].
			TRConstraint
				stickAtTheBottomOfTheWindow: legendElement trachelShape ]