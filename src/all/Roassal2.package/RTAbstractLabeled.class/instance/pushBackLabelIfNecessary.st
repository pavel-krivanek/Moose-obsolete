utility
pushBackLabelIfNecessary
	"move the label in the back, if configured properly"
	shouldBeInTheBack ifTrue: [
		labelTrachel pushBack ]