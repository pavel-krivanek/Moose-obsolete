public
highlight: aBlock
	"aBlock return an object or a list of objects to highlight"
	highlightElements := [ :el | 
		| objects |
		objects := aBlock rtValue: el model.
		(objects flatCollect: [ :o | el view elementsFromModel: o ]) copyWithout: nil
		]