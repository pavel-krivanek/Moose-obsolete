tests
testNewDocument
	| nodeWithElements document |

	super testNewDocument.

	(nodeWithElements := self newNode)
		 nodeFactory:
			(XMLPluggableNodeFactory new
				documentClass: XMLFDocument).
	document := nodeWithElements newDocument.
	self
		assert: document class == XMLFDocument;
		assert: document configuration == nodeWithElements configuration;
		assert: document nodeFactory == nodeWithElements nodeFactory.