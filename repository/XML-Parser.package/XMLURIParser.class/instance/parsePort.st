parsing
parsePort
	| port |

	(self peekFor: $:)
		ifTrue: [
			port :=
				XMLIntegerReader
					readFrom: readStream
					withBase: 10.
			[self atEnd
				or: [PathDelimiters includes: self peek]]
				whileFalse: [self next]].
	^ port.