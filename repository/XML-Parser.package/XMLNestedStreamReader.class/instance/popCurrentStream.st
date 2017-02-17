private
popCurrentStream
	| previousWhenPoppedDo |

	"close the stream first and pop it before evaluating the callback so any
	exception it raises won't cause us to leak file streams or double close a
	stream when XMLParser>>#handleParserError: sends #closeStreams"
	self closeStream: stream.
	previousWhenPoppedDo := whenPoppedDo.
	nestedStreams size > 0 "optimization"
		ifTrue: [| pushedBackStream |
			pushedBackStream := nestedStreams removeLast.
			stream := pushedBackStream stream.
			whenPoppedDo := pushedBackStream whenPoppedDo.
			isExternal := pushedBackStream isExternal.
			currentPosition := pushedBackStream currentPosition.
			currentLineNumber := pushedBackStream currentLineNumber.
			currentLineStartPosition := pushedBackStream currentLineStartPosition]
		ifFalse: [self setStreamToNull].

	"now it's safe to evaluate the callback"
	previousWhenPoppedDo
		ifNotNil: [previousWhenPoppedDo value].