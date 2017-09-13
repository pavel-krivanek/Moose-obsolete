accessing
isRemoveDuplicates
	"Specifies whether to remove duplicates of the value in nonunique Variables."
	^ isRemoveDuplicates ifNil: [ isRemoveDuplicates := false ]