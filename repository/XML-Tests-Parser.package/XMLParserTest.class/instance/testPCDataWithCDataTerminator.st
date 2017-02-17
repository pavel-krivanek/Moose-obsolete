tests
testPCDataWithCDataTerminator
	self
		should: [SAXHandler parse: '<test>test]]>test</test>']
		raise: XMLWellFormednessException.

	#('<test>test]] >test</test>'
		'<test>test] ]>test</test>'
		'<test>test ] ] > test</test>'
		'<test name="test]]>test]] >test] ]>test ] ] > test"/>')
		do: [:each | 
			self
				shouldnt: [SAXHandler parse: each]
				raise: XMLWellFormednessException].