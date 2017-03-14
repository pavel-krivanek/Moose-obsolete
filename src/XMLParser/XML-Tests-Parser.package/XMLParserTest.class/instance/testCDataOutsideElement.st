tests
testCDataOutsideElement
	#('<!DOCTYPE test [ <![CDATA[test]]> ]><test/>'
		'<![CDATA[test]]><test/>'
		'	<![CDATA[test]]><test/>'
		'<test/><![CDATA[test]]>'
		'<test/>	<![CDATA[test]]>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]