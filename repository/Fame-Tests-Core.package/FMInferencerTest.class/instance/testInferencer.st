running
testInferencer
	| trace |
	trace := self traceInferenceOfMetamodel: FMHeinekenExample modelMSE.
	trace contents isEmpty should beFalse	"todo more!!!"