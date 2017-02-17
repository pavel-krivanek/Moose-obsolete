tests
testNewDocument
	| node document |

	node := self newNode.
	document := node newDocument.
	self assert: document isDocument.
	node configuration
		ifNotNil: [
			self
				assert: document configuration == node configuration;
				assert: document nodeFactory == node nodeFactory].