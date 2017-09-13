accessing
ports
	"A optional Port of through which the given effect is detected."
	^ ports ifNil: [ ports := OrderedCollection new ]