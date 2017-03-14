accessing - morph contents
setMorphSize
	self wizardPart horizontalSize
		ifNotNil: [ 
			self textField
				hResizing: #rigid;
				width: self wizardPart horizontalSize ]