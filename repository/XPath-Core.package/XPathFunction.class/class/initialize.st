class initialization
initialize
	"self initialize"

	self allSubclassesDo: [:each | each prototype: nil]