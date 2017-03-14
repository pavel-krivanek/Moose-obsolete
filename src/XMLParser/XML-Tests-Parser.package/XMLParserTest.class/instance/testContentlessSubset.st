tests
testContentlessSubset
	#(''
		'<?xml encoding="UTF-8"?>'
		'<!--comment-->'
		'<?target data?>'
		'<?xml encoding="UTF-8"?><!--comment-->'
		'<?xml encoding="UTF-8"?><!--comment--><?target data?>')
		do: [:each |
			self
				shouldnt: [
					((SAXHandler on: '') parser driver
						externalSubsetParserOn: each
						documentURI: 'extern.dtd') parseDocument]
				raise: XMLWellFormednessException]