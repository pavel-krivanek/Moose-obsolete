tests
testReferencedPackages

	| env | 
	
	env := RGEnvironment new.
	"
	self assert: env referencedPackages isEmpty."