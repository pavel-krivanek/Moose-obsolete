hooks
renderIn: aView
	| extremity1 extremity2 line cursor dragAndConstraint trachelShape aValue w2 sliderSize |
	sliderSize := self isHorizontal
		ifTrue: [ size @ 0 ]
		ifFalse: [ 0 @ size ].
	extremity1 := (RTBox new
		width: 5;
		height: 10) element.
	extremity2 := (RTBox new
		width: 5;
		height: 10) element.
	line := (RTLine new width: 5) edgeFrom: extremity1 to: extremity2.
	aView add: extremity1.
	aView add: extremity2.
	aView add: line.
	extremity2 translateTo: sliderSize.
	cursor := self elementOn: nil.
	dragAndConstraint := RTConstrainedDraggable new.
	dragAndConstraint
		rectangle: [ w2 := (cursor encompassingRectangle width / 2)
				@ (cursor encompassingRectangle height / 2).
			w2 := w2
				*
					(self isHorizontal
						ifTrue: [ 1 @ 0 ]
						ifFalse: [ 0 @ 1 ]).
			extremity1 position - w2 corner: extremity2 position + w2 ].

	"We compute the slider value, and call the callback"
	dragAndConstraint
		afterBlock: [ self isHorizontal
				ifTrue: [ aValue := (cursor position x - extremity1 position x)
						/ (extremity2 position x - extremity1 position x) ]
				ifFalse: [ aValue := (cursor position y - extremity1 position y)
						/ (extremity2 position y - extremity1 position y) ].
			aValue := aValue * (max - min) + min.
			aValue := (aValue max: min) min: max.
			callback rtValue: aValue.
			hasLabel
				ifTrue: [ trachelShape
						text:
							(useIntegerLabel
								ifTrue: [ (aValue round: 0) asInteger ]
								ifFalse: [ aValue round: 2 ]) asString ] ].
	cursor @ dragAndConstraint.
	aView add: cursor.
	cursor translateTo: sliderSize * self progress.

	"We prepare a label if necessary"
	hasLabel
		ifTrue: [ cursor @ (RTLabeled new text: self value).
			trachelShape := cursor attributeAt: #RTLabelledLabel ].

	"We keep track of the elements we add in the view"
	sliderElements := RTGroup new.
	sliderElements add: cursor.
	sliderElements add: extremity1.
	sliderElements add: extremity2.
	sliderElements setAsFixed