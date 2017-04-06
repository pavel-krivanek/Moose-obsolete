merging
merge

	self traits do: [ :aTrait | self mergeTrait: aTrait ].
	self mergedClass compileAll.