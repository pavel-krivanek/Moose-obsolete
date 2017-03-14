tests
testAcceptNodeVisitor
	| visitor stringNode message |

	visitor := XMLRecordingNodeVisitor new.
	stringNode := self newNode.
	self
		assert: (stringNode acceptNodeVisitor: visitor) == stringNode;
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitStringNode:;
		assert: message arguments = (Array with: stringNode);
		deny: visitor messageRecorder hasMessages.