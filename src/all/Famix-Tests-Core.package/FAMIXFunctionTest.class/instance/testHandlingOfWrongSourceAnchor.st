as yet unclassified
testHandlingOfWrongSourceAnchor
	"some exporters populate the name of a file in the sourceAnchor, 
	and this test checks that Moose can handle this situation"

	| function |
	function := FAMIXFunction new.
	function sourceAnchor: 'pathtosomefile'.
	self assert: function sourceText equals: 'pathtosomefile'