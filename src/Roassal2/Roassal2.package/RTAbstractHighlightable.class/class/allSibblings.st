public
allSibblings
	"Define the interaction to highlight all the elements having the same (using #=) model"
	^ self highlightElements: [ :el | 
		el model 
			ifNotNil: [ el view elementsFromModel: el model ] 
			ifNil: [ #() ] ]
	
	"^ self highlightElements: [ :el | el view elements select: [ :e | e model notNil and: [ e model = el model ] ] ]"