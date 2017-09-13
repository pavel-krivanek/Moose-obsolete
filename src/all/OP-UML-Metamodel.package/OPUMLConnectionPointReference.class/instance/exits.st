accessing
exits
	"The exitPoints kind Pseudostates corresponding to this connection point."
	^ exits ifNil: [ exits := OrderedCollection new ]