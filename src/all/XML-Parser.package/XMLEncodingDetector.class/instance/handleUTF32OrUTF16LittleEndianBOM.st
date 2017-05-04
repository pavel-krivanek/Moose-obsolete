private
handleUTF32OrUTF16LittleEndianBOM
	2 to: UTF32LittleEndianBOM size do: [:i |
		self peek == (UTF32LittleEndianBOM at: i)
			ifTrue: [self next]
			ifFalse: [
				i > 2
					ifTrue: [
						"the 2 byte UTF-16 BOM begins the 4 byte UTF-32 BOM:
							UTF32LittleEndianBOM beginsWith:
								XMLUTF16LittleEndianStreamConverter byteOrderMark"
						stream position: startPosition + 2.
						^ XMLUTF16LittleEndianStreamConverter new].
				self resetStreamToStartPosition.
				^ nil]].
	^ XMLUTF32LittleEndianStreamConverter new.