tests
testNewPI
	| nodeWithElements |

	super testNewPI.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				piClass: XMLFPI).
	self assert: nodeWithElements newPI class == XMLFPI.