private
handleUTF16BigEndianBOM
	2 to: UTF16BigEndianBOM size do: [:i |
		self next == (UTF16BigEndianBOM at: i)
			ifFalse: [
				self resetStreamToStartPosition.
				^ nil]].
	^ XMLUTF16BigEndianStreamConverter new.