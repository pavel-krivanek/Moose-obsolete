private
formatFor: each
	^ (' ' join: ((each key argumentAt: 1) piecesCutWhereCamelCase collect: #capitalized)) , ' - '
		, (each value mooseDisplayString contractTo: 50)