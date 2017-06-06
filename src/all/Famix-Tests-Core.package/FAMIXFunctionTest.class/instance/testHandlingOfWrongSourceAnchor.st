tests
testHandlingOfWrongSourceAnchor
	"some exporters populate the name of a file in the sourceAnchor, 
	and this test checks that Moose can handle this situation"

	| function |
	function := self actualClass new.
	function sourceAnchor: (FAMIXSourceTextAnchor new source: 'pathtosomefile').
	self assert: function sourceText equals: 'pathtosomefile'