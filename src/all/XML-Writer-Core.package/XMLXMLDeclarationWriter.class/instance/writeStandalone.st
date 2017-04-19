private
writeStandalone
	self standalone
		ifTrue: [
			self writer
				writeAttributeName: 'standalone'
				unescapedValue: 'yes']