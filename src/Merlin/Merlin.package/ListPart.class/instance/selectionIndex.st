listControl
selectionIndex
	"Answer the value of selectionIndex"

	^ selectionIndex ifNil: [0] "if selectionIndex has not been yet initialized, we return 0 to avoid erros".