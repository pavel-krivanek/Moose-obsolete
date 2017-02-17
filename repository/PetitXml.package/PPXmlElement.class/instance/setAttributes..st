initialization
setAttributes: aCollection
	attributes := aCollection asArray
		collect: [ :each | each setParent: self ]