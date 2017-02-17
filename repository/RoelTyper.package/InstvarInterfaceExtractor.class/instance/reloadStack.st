private
reloadStack
	stack isNil
		ifTrue:
			[stack := self saveStacks
				at: self input pc
				ifAbsent: [initialStack copy].
			^self].
	stack := self saveStacks
		at: self input pc
		ifAbsent: [stack]