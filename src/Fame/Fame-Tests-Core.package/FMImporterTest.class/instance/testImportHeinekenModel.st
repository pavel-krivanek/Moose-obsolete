running
testImportHeinekenModel
	self testImportHeinekenMetamodel.
	tower model importString: FMHeinekenExample modelMSE.
	tower model elements size should = 4