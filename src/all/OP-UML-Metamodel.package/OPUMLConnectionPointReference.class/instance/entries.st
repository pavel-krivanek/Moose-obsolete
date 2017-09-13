accessing
entries
	"The entryPoint Pseudostates corresponding to this connection point."
	^ entries ifNil: [ entries := OrderedCollection new ]