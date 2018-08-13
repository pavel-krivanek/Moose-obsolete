tests
checkIncompatible: aBlock

	"prove that the block tries to do an action not suitable for a particular behavior strategy"

	self should: aBlock raise: RGIncompatibleBehaviorTypeError
