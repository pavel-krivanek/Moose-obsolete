tests
testElementNesting
	#('<unclosed>'
		'</unopened>'
		'<root></unopened></root>'
		'<root><unclosed></root>'
		'<root><first><second></first></second></root>'
		'<root><first><second></second></root></first>'
		'<root><first><second></root></second></first>'
		'<root/><secondRoot/>'
		'<root><first/></root><secondRoot/>'
		'<root><first/></root><secondRoot><second/></secondRoot>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]