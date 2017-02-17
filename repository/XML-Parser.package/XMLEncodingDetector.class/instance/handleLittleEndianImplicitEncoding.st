private
handleLittleEndianImplicitEncoding
	| converter |

	(self peekForASCII
		and: [self peekForNull])
		ifTrue: [
			converter :=
				(self peekForNull
					and: [self peekForNull])
					ifTrue: [XMLUTF32LittleEndianStreamConverter new]
					ifFalse: [XMLUTF16LittleEndianStreamConverter new]].
	self resetStreamToStartPosition.
	^ converter.