private
writeVersion
	self writer
		writeAttributeName: 'version'
		unescapedValue: self version