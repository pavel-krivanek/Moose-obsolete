private
writeBody
	self isCanonical
		ifTrue: [^ self].

	self writer
		space;
		writeName: 'version' unescapedValue: self version.

	self encoding isEmpty
		ifFalse: [
			self writer
				space;
				writeName: 'encoding' unescapedValue: self encoding].

	self standalone
		ifTrue: [
			self writer
				space;
				writeName: 'standalone' unescapedValue: 'yes'].