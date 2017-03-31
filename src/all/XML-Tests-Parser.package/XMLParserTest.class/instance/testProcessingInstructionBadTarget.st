tests
testProcessingInstructionBadTarget
	self badNames, #('xml' 'XML' 'Xml' 'xML' 'XMl' 'xmL' 'XmL' 'xMl')
		do: [:each |
			self
				should: [SAXHandler parse: '<?', each, ' value?><test/>']
				raise: XMLWellFormednessException]