private
clearAllImplementations
	"self clearImplementations"

	self
		implementation: nil;
		allSubclassesDo: [:each | each implementation: nil]