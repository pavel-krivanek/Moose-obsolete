rendering
widthFor: anElement
	^ TRStyledLabelShape
		widthOfText: (self textFor: anElement)
		fontName: (self fontNameFor: fontName)
		fontSize: (self heightFor: anElement)
		emphasis: (self emphasisFor: anElement)