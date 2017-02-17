tests
testCharacterReferenceUnterminated
	#('<test>&#'
		'<test>&#</test>'
		'<test>&#x'
		'<test>&#x</test>'
		'<test>&#34'
		'<test>&#34</test>'
		'<test>&#x22'
		'<test>&#x22</test>'
		'<test>&#;'
		'<test>&#;</test>'
		'<test>&#x;'
		'<test>&#x;</test>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException.
			self
				should: [
					(SAXHandler on: each)
						replacesContentEntityReferences: false;
						parseDocument]
				raise: XMLWellFormednessException]