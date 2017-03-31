tests
testComment
	| xml document comments |

	xml := '<!--one--><test><!--two--></test><!--three-->'.
	document := XMLDOMParser parse: xml.
	comments := document allNodesSelect: [:each | each isComment].
	self assert: comments isEmpty.

	document :=
		(XMLDOMParser on: xml)
			preservesCommentNodes: true;
			parseDocument.
	comments := document allNodesSelect: [:each | each isComment].
	self
		assert: (comments allSatisfy: [:each | each isComment]);
		assert: (comments collect: [:each | each string]) asArray = #('one' 'two' 'three').