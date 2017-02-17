accessing - morph contents
setMorphSize
	self wizardPart horizontalSize
		ifNotNil: [ 
			self dropList
				hResizing: #rigid;
				vResizing: #shrinkWrap;
				width: self wizardPart horizontalSize ]