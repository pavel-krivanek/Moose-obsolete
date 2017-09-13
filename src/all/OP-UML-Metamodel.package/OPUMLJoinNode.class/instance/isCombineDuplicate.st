accessing
isCombineDuplicate
	"Indicates whether incoming tokens having objects with the same identity are combined into one by the JoinNode."
	^ isCombineDuplicate ifNil: [ isCombineDuplicate := true ]