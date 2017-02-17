running
testSimple
	"--- FIXME: these 4 lines are moot ---"

	| processor rep elements originalSize props mmClass |
	processor := FMPragmaProcessor new.
	originalSize := processor elements size.
	processor queue: FMPragmaProcessorTestDummy.
	processor run.
	processor elements size should = (originalSize + 2).
	rep := processor asMetamodel.
	rep should beKindOf: FMRepository.
	rep elements size should = (originalSize + 2).
	elements := rep classes.
	elements size should = (originalSize + 1).
	props := rep properties.
	props size should = 1.
	props anyOne mmClass notNil should beTrue.
	elements should include: props anyOne mmClass.
	mmClass := props anyOne mmClass.
	mmClass name should = #FMAnnotationTest.
	mmClass superclass name should = #Object.
	props anyOne type name should = #Boolean