tests
testPreviousElement 
	| root previousElement |

	root := self newNodeWithElements firstElement.
	previousElement := nil.
	root elements do: [:each |
		self assert: each previousElement = previousElement.
		previousElement := each].