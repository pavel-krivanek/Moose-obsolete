tests
testAcceptNodeVisitor
	| visitor element message |

	visitor := XMLRecordingNodeVisitor new.
	element := self newNode.
	self
		assert: (element acceptNodeVisitor: visitor) == element;
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitElement:;
		assert: message arguments = (Array with: element);
		assert: visitor messageRecorder hasMessages.

	message := visitor messageRecorder nextMessage.
	self
		assert: message selector == #visitNodeWithElements:;
		assert: message arguments = (Array with: element);
		deny: visitor messageRecorder hasMessages.

	super testAcceptNodeVisitor.