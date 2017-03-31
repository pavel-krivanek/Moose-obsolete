private
clearAllImplementations
	"self clearImplementations"

	self implementation: nil.
	self allSubclassesDo: [:each | each implementation: nil]