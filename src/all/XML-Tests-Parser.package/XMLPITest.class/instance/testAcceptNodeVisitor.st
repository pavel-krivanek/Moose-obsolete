tests
testAcceptNodeVisitor
	| visitor pi message |

	visitor := XMLRecordingNodeVisitor new.
	pi := self newNode.
	self
		assert: (pi acceptNodeVisitor: visitor) == pi;
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitPI:;
		assert: message arguments = (Array with: pi);
		deny: visitor messageRecorder hasMessages.