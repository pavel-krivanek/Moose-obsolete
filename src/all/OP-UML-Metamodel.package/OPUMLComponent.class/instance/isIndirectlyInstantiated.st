accessing
isIndirectlyInstantiated
	"If true, the Component is defined at design-time, but at run-time (or execution-time) an object specified by the Component does not exist, that is, the Component is instantiated indirectly, through the instantiation of its realizing Classifiers or parts."
	^ isIndirectlyInstantiated ifNil: [ isIndirectlyInstantiated := true ]