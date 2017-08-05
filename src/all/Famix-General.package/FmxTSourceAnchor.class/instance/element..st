accessing
element: anElement
	element := anElement .
	element sourceAnchor = self ifFalse: [  element sourceAnchor: self ]