private
writeDefaultValue
	self defaultValue
		ifNotEmpty: [:value |
			self writer
				space;
				writeEscapedContentString: value]