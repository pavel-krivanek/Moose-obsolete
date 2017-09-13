accessing
isDestroyDuplicates
	"Specifies whether to destroy duplicates of the value in nonunique Association ends."
	^ isDestroyDuplicates ifNil: [ isDestroyDuplicates := false ]