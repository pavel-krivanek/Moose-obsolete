accessing
isRelative
	"Specifies whether the TimeEvent is specified as an absolute or relative time."
	^ isRelative ifNil: [ isRelative := false ]