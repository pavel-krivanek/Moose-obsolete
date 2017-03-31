private
latePopulateContents


	partValue isNil 
		ifFalse: [
			partValue isBlock
			ifTrue: [
				self text: (partValue value: self requiredInputs). 
				]
			ifFalse: [
				self text: partValue 
				].
			]
		ifTrue: [
			|default|
			default := defaultValue meValue: self requiredInputs.
			default ifNotNil: [self text: default.]
			]
	