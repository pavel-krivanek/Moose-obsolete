enumerating
processMethod: aMethodEntity usingImporter: anImporter inModel: anObject
	| parseTree |
	self targetModel: anObject.
	self importer: anImporter.
	self methodEntity: aMethodEntity.
	self compiledMethod ifNil: [ ^ self ].
	parseTree := self compiledMethod methodClass parseTreeFor: self compiledMethod selector.
	parseTree
		ifNotNil: [ "parseTreeOrNil := self stParseTree.
	parseTreeOrNil isNil ifFalse: [self visitNode: parseTreeOrNil]" self visitMethodNode: parseTree ]