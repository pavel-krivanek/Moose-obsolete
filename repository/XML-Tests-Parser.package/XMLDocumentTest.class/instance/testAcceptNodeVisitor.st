tests
testAcceptNodeVisitor
	| visitor document message |

	visitor := XMLRecordingNodeVisitor new.
	document := self newNode.
	self
		assert: (document acceptNodeVisitor: visitor) == document;
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitDocument:;
		assert: message arguments = (Array with: document);
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitNodeWithElements:;
		assert: message arguments = (Array with: document);
		deny: visitor messageRecorder hasMessages.

	super testAcceptNodeVisitor.