heuristics
assignmentTypeOf: val
	val isBehavior ifTrue: [^val].
	val isVariableBinding
		ifTrue:
			[val key == #instcreation
				ifTrue: [^val value]
				ifFalse: [^val value class]].
	^nil