accessing - morph contents
specificMorphContents 

	self setMorphSize.
	^ self newRowWith: {(self newLabel: self wizardPart prefix) disable; yourself . self textField . (self newLabel: self wizardPart suffix) disable; yourself }

	