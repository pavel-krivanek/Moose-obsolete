accessing
isQuery
	"Specifies whether an execution of the BehavioralFeature leaves the state of the system unchanged (isQuery=true) or whether side effects may occur (isQuery=false)."
	^ isQuery ifNil: [ isQuery := false ]