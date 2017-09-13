accessing
realizingMessages
	"Determines which Messages will realize the specified flow."
	^ realizingMessages ifNil: [ realizingMessages := OrderedCollection new ]