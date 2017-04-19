initialization
setUp
	multipleFileAnchor := FAMIXMultipleFileAnchor new mooseModel: MooseModel new.
	(1 to: 2) do: [:each | multipleFileAnchor addFileAnchorWithPath: 'aFileName']