accessing
possibleTargetClasses
	^ possibleTargetClasses
		ifNil: [ possibleTargetClasses := self privatePossibleTargetClasses ]