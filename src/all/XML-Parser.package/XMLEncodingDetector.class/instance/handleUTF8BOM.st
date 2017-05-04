private
handleUTF8BOM
	2 to: UTF8BOM size do: [:i |
		self next == (UTF8BOM at: i)
			ifFalse: [
				self resetStreamToStartPosition.
				^ nil]].
	^ XMLUTF8StreamConverter new.