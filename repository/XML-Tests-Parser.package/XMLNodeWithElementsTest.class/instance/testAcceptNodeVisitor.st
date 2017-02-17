tests
testAcceptNodeVisitor
	| visitor nodeWithElements message |

	visitor := XMLRecordingNodeVisitor new.
	nodeWithElements := self newNodeWithElements.
	self
		assert: (nodeWithElements acceptNodeVisitor: visitor) == nodeWithElements;
		assert: visitor messageRecorder hasMessages.

	"skip the messages for the nodeWithElements"
	[visitor messageRecorder hasMessages
		and: [
			visitor messageRecorder peekMessage arguments =
				(Array with: nodeWithElements)]]
		whileTrue: [visitor messageRecorder nextMessage].

	nodeWithElements descendantNodesDo: [:node | | visitingSelectors |
		visitingSelectors :=
			(#(
				#(isElement #(visitElement: visitNodeWithElements:))
				#(isCData #(visitCData: #visitStringNode:))
				#(isStringNode #(#visitStringNode:))
				#(isComment #(visitComment:))
				#(isPI #(visitPI:)))
					detect: [:each | node perform: each first]
					ifNone: [#(nil #())]) second.

		self assert: visitingSelectors notEmpty.
		visitingSelectors do: [:selector |
			self assert: visitor messageRecorder hasMessages.

			message := visitor messageRecorder nextMessage.
			self
				assert: message selector = selector;
				assert: message arguments = (Array with: node)]].

	self deny: visitor messageRecorder hasMessages.