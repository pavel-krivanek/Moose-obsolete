accessing
possibleSourceClasses
	^ possibleSourceClasses
		ifNil: [ possibleSourceClasses := self privatePossibleSourcesClasses ]