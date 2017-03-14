accessing - morph contents
listMorph

	^ listMorph ifNil: [listMorph := self newNormalListFor: self wizardPart  list: #list selected: #selectionIndex changeSelected: #selectionIndex:]