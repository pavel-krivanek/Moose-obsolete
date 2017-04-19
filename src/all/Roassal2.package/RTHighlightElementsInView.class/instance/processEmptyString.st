initialization
processEmptyString
	view attributeAt: #RTHighlightElementsInView ifAbsentPut: [ 1 ].
	"Should remove the color previously set"
	view elements
		do: [ :e | 
			(e hasAttribute: #prevousColorRTHighlightElementsInView)
				ifTrue: [ e trachelShape
						color: (e attributeAt: #prevousColorRTHighlightElementsInView).
					e removeAttributeAt: #prevousColorRTHighlightElementsInView ] ].
	^ self