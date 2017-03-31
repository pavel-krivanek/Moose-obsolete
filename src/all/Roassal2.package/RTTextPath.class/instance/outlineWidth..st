accessing
outlineWidth: aValueOrAOneArgBlock
	self outlineWidthElement: [ :e | aValueOrAOneArgBlock rtValue: e model ].