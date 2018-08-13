tests
testTypes

	| newBehavior newSuperclass |
	newBehavior := self behaviorClass unnamed.
	
	self deny: newBehavior isBytes.
	self deny: newBehavior isCompiledMethod.
	self deny: newBehavior isEphemeron.
	self deny: newBehavior isWeak.
	self deny: newBehavior isWords.

	