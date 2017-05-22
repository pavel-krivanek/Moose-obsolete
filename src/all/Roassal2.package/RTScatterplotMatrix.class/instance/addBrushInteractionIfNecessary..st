helpers
addBrushInteractionIfNecessary: aView
	| int |
	self allowSelectableView ifFalse: [ ^ self ].
	int := RTBrushInteraction new.
	int elementsToBrush: [ :group | 
		group flatCollect: [ :e | aView elementsFromModel: e model ] ].
	int domainElements: self allDotElements.
	int groups: self boxes.
	aView @ int.