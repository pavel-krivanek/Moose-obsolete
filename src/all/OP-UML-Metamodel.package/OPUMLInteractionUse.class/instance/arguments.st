accessing
arguments
	"The actual arguments of the Interaction."
	^ arguments ifNil: [ arguments := OrderedCollection new ]