accessing
isSingleExecution
	"If true, all invocations of the Activity are handled by the same execution."
	^ isSingleExecution ifNil: [ isSingleExecution := false ]