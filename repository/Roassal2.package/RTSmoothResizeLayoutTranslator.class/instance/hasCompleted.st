testing
hasCompleted
	"Return true if all the translation has completed"
	^ super hasCompleted and: [ resize hasCompleted  ]