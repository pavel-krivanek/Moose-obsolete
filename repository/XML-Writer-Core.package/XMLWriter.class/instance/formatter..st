accessing
formatter: aFormatter
	(formatter := aFormatter)
		ifNotNil: [formatter writer: self]