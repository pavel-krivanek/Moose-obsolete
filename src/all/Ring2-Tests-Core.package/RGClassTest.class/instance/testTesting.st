tests
testTesting

	| env behavior | 
	
	"TODO: more complete test"
	
	env := RGEnvironment new.
	behavior := env ensureClassNamed: #SomeTrait.
	self deny: behavior isBits.
	self deny: behavior isBytes.
	self deny: behavior isCompiledMethod.
	self deny: behavior isEphemeron.
	self deny: behavior isWeak.
	self deny: behavior isWords.
	self assert: behavior isPointers.
