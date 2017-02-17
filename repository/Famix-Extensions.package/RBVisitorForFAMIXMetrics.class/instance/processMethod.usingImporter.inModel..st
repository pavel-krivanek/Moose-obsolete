enumerating
processMethod: aMethodEntity usingImporter: anImporter inModel: anObject
	
	| parseTree |
	self targetModel: anObject.
	self importer: anImporter.
	self methodEntity: aMethodEntity.
	
	parseTree := self compiledMethod methodClass parseTreeFor: self compiledMethod selector. 
	parseTree ifNotNil: [self visitMethodNode: parseTree]
	
	"parseTreeOrNil := self stParseTree.
	parseTreeOrNil isNil ifFalse: [self visitNode: parseTreeOrNil]"