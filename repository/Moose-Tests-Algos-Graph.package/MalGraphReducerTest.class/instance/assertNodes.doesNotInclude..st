private - utility
assertNodes: aNodeList doesNotInclude: anotherNodeList
	aNodeList 
		collect: #model
		thenDo: 
			[ :model | 
			self 
				deny: ((anotherNodeList collect: #model) includes: model)
				description: model asString , ' should not be referenced!' ] 