tests
testClose
	| stream |

	stream := self newStream.
	self
		shouldnt: [
			stream
				close;
				close]
		raise: Error.