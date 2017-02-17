initialization
setChildren: aCollection
	children := aCollection asArray
		collect: [ :each | each setParent: self ]