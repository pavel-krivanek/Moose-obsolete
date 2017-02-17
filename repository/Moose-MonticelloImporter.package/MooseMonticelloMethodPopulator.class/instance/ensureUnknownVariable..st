compatibility with visitor
ensureUnknownVariable: name
	^ importer ensureUnknownVariable: name
	
"	^globals
		at: name
		ifAbsent: [self createUnknownVariable: name]
"