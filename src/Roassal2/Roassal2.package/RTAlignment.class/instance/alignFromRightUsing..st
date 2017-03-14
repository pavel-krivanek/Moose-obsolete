public
alignFromRightUsing: anElement
	| topX newX |
	topX := anElement encompassingRectangle topRight x.
	elements do: [ :s |
		newX := topX - (s encompassingRectangle width / 2).
		s translateTo: newX @ s position y
	]