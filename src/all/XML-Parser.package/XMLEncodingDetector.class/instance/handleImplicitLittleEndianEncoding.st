private
handleImplicitLittleEndianEncoding
	self peekForNull
		ifTrue: [| converter |
			converter :=
				(self peekForNull
					and: [self peekForNull])
					ifTrue: [XMLUTF32LittleEndianStreamConverter new]
					ifFalse: [XMLUTF16LittleEndianStreamConverter new].
			self resetStreamToStartPosition.
			^ converter]
		ifFalse: [
			self resetStreamToStartPosition.
			^ nil]