parsing
nextArgumentList
	"a template method; nextArgument must be overriden to handle arguments"
	self nextStartArgumentList.
	self peekForEndArgumentList
		ifFalse: [
			self nextArgument.
			[self peekForArgumentSeparator]
				whileTrue: [self nextArgument].
			self nextEndArgumentList].