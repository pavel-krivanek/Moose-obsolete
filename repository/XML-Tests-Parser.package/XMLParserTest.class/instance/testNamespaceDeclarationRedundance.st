tests
testNamespaceDeclarationRedundance
	#('<test xmlns:prefix="prefixNS" xmlns:prefixTwo="prefixTwoNS" xmlns:prefix="prefixNS" />'
		'<test xmlns:prefix="prefixNS" xmlns:prefixTwo="prefixTwoNS" xmlns:prefix="prefixTwoNS" />'
		'<test xmlns="defaultNS" xmlns:prefix="prefixNS" xmlns="defaultNS" />'
		'<test xmlns="defaultNS" xmlns:prefix="prefixNS" xmlns="defaultTwoNS" />')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]