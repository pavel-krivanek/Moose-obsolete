accessing
messages
	"The set of messages that apply to this fragment."
	^ messages ifNil: [ messages := OrderedCollection new ]