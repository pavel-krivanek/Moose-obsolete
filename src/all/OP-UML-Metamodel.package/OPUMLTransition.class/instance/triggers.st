accessing
triggers
	"Specifies the Triggers that may fire the transition."
	^ triggers ifNil: [ triggers := OrderedCollection new ]