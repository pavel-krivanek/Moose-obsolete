accessing
argumentTypeAt: anIndex ifAbsent: aBlock
	anIndex > 0
		ifFalse: [^ aBlock value].
	anIndex > self argumentTypes size
		ifTrue: [
			"If it has a variable number of arguments, then
			use the last argument type for the remaining"
			self acceptsVariableArguments
				ifTrue: [^ self argumentTypes last]
				ifFalse: [^ aBlock value]].
	^ self argumentTypes at: anIndex.