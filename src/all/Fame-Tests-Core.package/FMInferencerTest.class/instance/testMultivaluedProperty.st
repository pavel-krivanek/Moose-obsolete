running
testMultivaluedProperty
	| trace |
	trace := self traceInferenceOfMetamodel:
			'(
		(EG.Element (attr 1))
		(EG.Element (attr 1 2))
		(EG.Element (attr 1 2 3))
	)'.
	trace contents isEmpty should beFalse	"TODO, better test"