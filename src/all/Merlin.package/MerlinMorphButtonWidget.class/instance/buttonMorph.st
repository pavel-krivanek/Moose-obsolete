accessing - morph contents
buttonMorph

	^ buttonMorph ifNil: [buttonMorph := self newButtonOn: self wizardPart named: self wizardPart label withAction: #hasChanged.]
