accessing
triggers
	"The Triggers specifying the Events of which the AcceptEventAction waits for occurrences."
	^ triggers ifNil: [ triggers := OrderedCollection new ]