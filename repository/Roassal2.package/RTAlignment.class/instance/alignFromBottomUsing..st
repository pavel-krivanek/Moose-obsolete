public
alignFromBottomUsing: anElement
	"The argument anElement is a fix point. It does not move"
	| topY newY |
	topY := anElement encompassingRectangle bottomCenter y.
	elements do: [ :s |
		newY := topY - (s encompassingRectangle height / 2).
		s translateTo: s position x @ newY
	]