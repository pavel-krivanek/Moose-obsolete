running
testImportHeinekenMetamodel
	tower metamodel importString: FMHeinekenExample metamodelMSE.
	tower metamodel packages size should = 1.
	tower metamodel classes size should = 3.
	tower metamodel properties size should = 12