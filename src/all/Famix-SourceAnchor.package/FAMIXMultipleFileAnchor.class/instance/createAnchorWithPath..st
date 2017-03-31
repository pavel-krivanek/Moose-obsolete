adding
createAnchorWithPath: aPath

	self allFiles add:	(
		FAMIXFileAnchor new
			fileName: aPath;
			mooseModel: self mooseModel;
			yourself)