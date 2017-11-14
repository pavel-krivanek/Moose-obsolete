source
prefixedXMLSource
	^ '<prefix:test xmlns:prefix="prefixNS" xmlns="defaultNS" ',
		'name="value" prefix:name="prefixValue">',
		'test',
		'</prefix:test>'