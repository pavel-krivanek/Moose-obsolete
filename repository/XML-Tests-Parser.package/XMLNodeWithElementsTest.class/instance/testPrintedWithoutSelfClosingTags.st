tests
testPrintedWithoutSelfClosingTags
	| nodeWithElements printString printStringWithoutSelfClosingTags |

	nodeWithElements := self newNodeWithElements.
	printString := nodeWithElements printString.
	printStringWithoutSelfClosingTags := nodeWithElements printedWithoutSelfClosingTags.
	self deny: printString = printStringWithoutSelfClosingTags.

	nodeWithElements allElementsDo: [:each |
		each hasChildren
			ifFalse: [
				printString :=
					printString
						copyReplaceAll: '<', each name, ' />'
						with: '<', each name, '></', each name, '>']].
	self assert: printString = printStringWithoutSelfClosingTags.