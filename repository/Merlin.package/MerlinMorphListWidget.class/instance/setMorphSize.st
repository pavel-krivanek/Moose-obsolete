accessing - morph contents
setMorphSize
	self wizardPart horizontalSize ifNotNil: [ self listMorph minWidth: self wizardPart horizontalSize ].
	self wizardPart verticalSize ifNotNil: [ self listMorph minHeight: self wizardPart verticalSize ]