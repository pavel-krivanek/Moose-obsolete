private
handleUTF32BigEndianBOMOrImplicitEncoding
	2 to: UTF32BigEndianBOM size do: [:i |
		self peek == (UTF32BigEndianBOM at: i)
			ifTrue: [self next]
			ifFalse: [
				(i = 2 "(UTF32BigEndianBOM at: 1) == NullCharacter"
					and: [self peekForASCII])
					ifTrue: [
						"null char followed by an ASCII char; implicit UTF-16 BE"
						self resetStreamToStartPosition.
						^ XMLUTF16BigEndianStreamConverter new]
					ifFalse: [
						(i = 3  "(UTF32BigEndianBOM at: 2) == NullCharacter"
							and: [self peekForNull
								and: [self peekForASCII]]) 
							ifTrue: [
								"three null chars followed by an ASCII char;
								implicit UTF-32 BE"
								self resetStreamToStartPosition.
								^ XMLUTF32BigEndianStreamConverter new]]]].
	^ XMLUTF32BigEndianStreamConverter new.