private
extractPackageNameOutOfMetacelloFile: filename
	 ^ (filename includes: $.) 
		ifTrue: [	filename copyUpToLast: $- ]
		ifFalse: [ filename ]