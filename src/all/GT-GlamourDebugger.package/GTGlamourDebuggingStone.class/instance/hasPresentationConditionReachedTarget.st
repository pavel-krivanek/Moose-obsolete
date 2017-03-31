testing context
hasPresentationConditionReachedTarget

	^ true
	"^ self session context peekInstruction arguments size = 1 and: [
		self session context peekInstruction argument = #condition ]"