tests
testDocument
	| document |

	super testDocument.

	document := self newNode.
	self assert: document document == document.

	document := self newNodeWithElements.
	self assert: document document == document.