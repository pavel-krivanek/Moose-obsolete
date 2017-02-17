testing
isEmbeddedWithStringMarkup
	self parent
		ifNil: [^ false]
		ifNotNil: [:parent | ^ parent hasEmbeddedStringMarkup]