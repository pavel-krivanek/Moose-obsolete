tests
testParsingSample
	| document factory |

	factory := self newFactoryWithClasses.
	document :=
		(XMLDOMParser on: self sampleUserXML)
			nodeFactory: factory;
			preservesCDataNodes: true;
			preservesCommentNodes: true;
			parseDocument.
	self
		assert: document class == self documentClass;
		assert: document nodeFactory == factory.

	document allElementsDo: [:each |
		self
			assert: each class == self elementClass;
			assert: each nodeFactory == factory].

	document allNodesDo: [:each |
		each isStringNode
			ifTrue: [
				self assert:
					each class == 
						(each isCData
							ifTrue: [self cdataClass]
							ifFalse: [self stringNodeClass])].
		each isComment
			ifTrue: [self assert: each class == self commentClass].
		each isPI
			ifTrue: [self assert: each class == self piClass]].