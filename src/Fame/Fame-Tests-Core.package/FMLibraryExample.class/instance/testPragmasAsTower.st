examples
testPragmasAsTower
	| tower |
	tower := self testPragmaProcessing asTower.
	tower metaMetamodel metamodel should = tower metaMetamodel.
	tower metamodel metamodel should = tower metaMetamodel.
	tower model metamodel should = tower metamodel.
	tower metaMetamodel elements isEmpty should beFalse.
	tower metamodel elements isEmpty should beFalse.
	tower model elements isEmpty should beTrue.	"must be empty"
	tower metaMetamodel packages size should = 1.
	tower metaMetamodel packages anyOne name should = #FM3.
	tower metamodel packages size should = 1.
	tower metamodel packages anyOne name should = #LIB.
	^ tower