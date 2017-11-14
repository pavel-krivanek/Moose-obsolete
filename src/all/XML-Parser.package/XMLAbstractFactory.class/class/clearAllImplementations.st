clearing
clearAllImplementations
	"self clearAllImplementations"

	self
		implementation: nil;
		allSubclassesDo: [:each | each implementation: nil]