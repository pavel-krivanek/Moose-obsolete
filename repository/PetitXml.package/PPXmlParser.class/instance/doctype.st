grammar
doctype
	^ super doctype ==> [ :node | PPXmlDoctype data: node ]