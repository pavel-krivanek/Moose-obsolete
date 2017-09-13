accessing
isMultireceive
	"Indicates whether the objects in the ObjectFlow are gathered from respondents to multicasting."
	^ isMultireceive ifNil: [ isMultireceive := false ]