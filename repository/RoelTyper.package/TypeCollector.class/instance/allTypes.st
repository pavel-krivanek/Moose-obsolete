accessing
allTypes
	self typingResults do: [:each | each types].
	localTypingResults valuesDo: [:array | array do: [:et | et types]]