private
writeEncoding
	self hasEncoding
		ifTrue: [
			self writer
				writeAttributeName: 'encoding'
				unescapedValue: self encoding]