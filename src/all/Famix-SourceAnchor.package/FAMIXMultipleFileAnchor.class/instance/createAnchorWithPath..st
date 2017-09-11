adding
createAnchorWithPath: aPath
	self
		addSourceAnchor:
			(FAMIXFileAnchor new
				fileName: aPath;
				mooseModel: self mooseModel;
				yourself)