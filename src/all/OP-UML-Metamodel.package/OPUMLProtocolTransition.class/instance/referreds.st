accessing
referreds
	"This association refers to the associated Operation. It is derived from the Operation of the CallEvent Trigger when applicable."
	^ referreds ifNil: [ referreds := OrderedCollection new ]