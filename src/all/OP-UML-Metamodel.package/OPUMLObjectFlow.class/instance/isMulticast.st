accessing
isMulticast
	"Indicates whether the objects in the ObjectFlow are passed by multicasting."
	^ isMulticast ifNil: [ isMulticast := false ]