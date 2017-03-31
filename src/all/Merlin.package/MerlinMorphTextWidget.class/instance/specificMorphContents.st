accessing - morph contents
specificMorphContents 

	^ self textMorph contents: (self wizardPart formatBlock meValue: self wizardPart text)

	