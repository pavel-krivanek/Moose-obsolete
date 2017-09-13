accessing
isRemoveDuplicates
	"Specifies whether to remove duplicates of the value in nonunique StructuralFeatures."
	^ isRemoveDuplicates ifNil: [ isRemoveDuplicates := false ]