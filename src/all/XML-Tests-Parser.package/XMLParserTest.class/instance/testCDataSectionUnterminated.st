tests
testCDataSectionUnterminated
	#('<test><!['
		'<test><![</test>'
		'<test><![CDATA['
		'<test><![CDATA[</test>'
		'<test><![CDATA[ test'
		'<test><![CDATA[ test</test>'
		'<test><![CDATA[ test ]'
		'<test><![CDATA[ test ]</test>'
		'<test><![CDATA[ test ]]'
		'<test><![CDATA[ test ]]</test>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]