tests
testProcessingInstructionUnterminated
	#('<?'
		'<??'
		'<??>'
		'<?name'
		'<?name?'
		'<?name value'
		'<?name value?'
		'<?name value>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException.
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException.
			self
				should: [SAXHandler parse: '<test/>', each]
				raise: XMLWellFormednessException.
			self
				should: [SAXHandler parse: '<test/>', each, '<test/>']
				raise: XMLWellFormednessException]