public
alignFromTopUsing: anElement
	| topY newY |
	topY := anElement encompassingRectangle topCenter y.
	elements do: [ :s |
		newY := topY + (s encompassingRectangle height / 2).
		s translateTo: s position x @ newY
	]