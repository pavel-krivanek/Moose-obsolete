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
	nestBlock value: RTNest new value: legendElement value: myGroup.
	
	position value: (RTConstraint
		movable: legendElement
		fix: (RTGroup withAll: elementsInTheViewWithoutTheLegend)).
	
	isFixed
		ifTrue: [ | els |
			els := aView elements
				copyWithoutAll: elementsInTheViewWithoutTheLegend.
			els do: [ :e | e trachelShape setAsFixed ].
			TRConstraint
				stickAtTheBottomOfTheWindow: legendElement trachelShape ]