accessing - morph contents
setMorphSize
	self wizardPart horizontalSize
		ifNotNil: [ 
			self textEditor
				hResizing: #rigid;
				width: self wizardPart horizontalSize ].
	self wizardPart verticalSize
		ifNotNil: [ 
			self textEditor
				vResizing: #rigid;
				height: self wizardPart verticalSize ]