tests
testNextElement 
	| root nextElement |

	root := self newNodeWithElements firstElement.
	nextElement := nil.
	root elements reverseDo: [:each |
		self assert: each nextElement = nextElement.
		nextElement := each].