testing
testDoubledString
	| parser |
	parser := ($' asParser , (($' asParser , $' asParser) / $' asParser negate) star flatten , $' asParser) 
		==> [ :nodes | nodes second copyReplaceAll: '''''' with: '''' ].

	self assert: parser parse: '''''' to: ''.
	self assert: parser parse: '''a''' to: 'a'.
	self assert: parser parse: '''ab''' to: 'ab'.
	self assert: parser parse: '''a''''b''' to: 'a''b'.
	self assert: parser parse: '''a''''''''b''' to: 'a''''b'