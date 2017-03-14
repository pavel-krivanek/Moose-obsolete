testing
hasProblems
	^ problems notEmpty
		or: [ self hasValidArguments not
			or: [  self hasValidAfter not
				or: [ self hasValidDependencies not ] ] ]