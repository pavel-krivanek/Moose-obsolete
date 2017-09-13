accessing
results
	"OutputPins holding the values received from an Event occurrence."
	^ results ifNil: [ results := OrderedCollection new ]