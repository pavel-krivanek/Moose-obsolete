accessing
bodyParts
	"The set of ExecutableNodes that perform the repetitive computations of the loop. The bodyPart is executed as long as the test section produces a true value."
	^ bodyParts ifNil: [ bodyParts := OrderedCollection new ]