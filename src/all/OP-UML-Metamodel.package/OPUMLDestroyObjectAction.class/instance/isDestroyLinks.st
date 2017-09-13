accessing
isDestroyLinks
	"Specifies whether links in which the object participates are destroyed along with the object."
	^ isDestroyLinks ifNil: [ isDestroyLinks := false ]