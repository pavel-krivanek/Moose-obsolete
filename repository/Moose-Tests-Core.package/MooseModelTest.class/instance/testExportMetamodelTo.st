tests
testExportMetamodelTo

	| stream |
	stream := WriteStream on: String new.
	self shouldnt: [MooseModel exportMetamodelTo: stream]  raise: Error.
	self deny: stream isEmpty