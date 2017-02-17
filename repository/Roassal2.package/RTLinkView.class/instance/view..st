accessing
view: aBlock
	self viewElement: [ :e | aBlock rtValue: e model ].