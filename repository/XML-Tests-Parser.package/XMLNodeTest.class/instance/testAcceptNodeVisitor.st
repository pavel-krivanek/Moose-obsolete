tests
testAcceptNodeVisitor
	| visitor node |

	visitor := XMLRecordingNodeVisitor new.
	node := self newNode.
	self
		assert: (node acceptNodeVisitor: visitor) == node;
		deny: visitor messageRecorder hasMessages.