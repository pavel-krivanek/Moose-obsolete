adding
addAssignment: value toTmp: index in: aCompiledMethod
	((localTypingResults at: aCompiledMethod) at: index + 1) addAssignment: value