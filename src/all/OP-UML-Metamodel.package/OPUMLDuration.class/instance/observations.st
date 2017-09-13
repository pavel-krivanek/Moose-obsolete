accessing
observations
	"Refers to the Observations that are involved in the computation of the Duration value"
	^ observations ifNil: [ observations := OrderedCollection new ]