tests
testAcceptNodeVisitor
	| visitor comment message |

	visitor := XMLRecordingNodeVisitor new.
	comment := self newNode.
	self
		assert: (comment acceptNodeVisitor: visitor) == comment;
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitComment:;
		assert: message arguments = (Array with: comment);
		deny: visitor messageRecorder hasMessages.