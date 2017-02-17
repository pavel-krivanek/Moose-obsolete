examples
testMetaMetamodelIsaM3Repository
	| mm |
	mm := self testPragmasAsMetamodel.
	mm metamodel should not = mm.
	mm metamodel metamodel should = mm metamodel