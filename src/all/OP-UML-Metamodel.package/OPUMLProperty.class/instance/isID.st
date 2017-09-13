accessing
isID
	"True indicates this property can be used to uniquely identify an instance of the containing Class."
	^ isID ifNil: [ isID := false ]