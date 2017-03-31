tests
testAcceptNodeVisitor
	| visitor cdata message |

	visitor := XMLRecordingNodeVisitor new.
	cdata := self newNode.
	self
		assert: (cdata acceptNodeVisitor: visitor) == cdata;
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitCData:;
		assert: message arguments = (Array with: cdata);
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitStringNode:;
		assert: message arguments = (Array with: cdata);
		deny: visitor messageRecorder hasMessages.