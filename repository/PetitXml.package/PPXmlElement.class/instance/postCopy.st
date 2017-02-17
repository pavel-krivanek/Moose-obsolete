copying
postCopy
	super postCopy.
	self setAttributes: (self attributes
		collect: [ :each | each copy ])