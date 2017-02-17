tests
testAttributeRedundance
	#('<test name="value" newName="newValue" name="value" />'
		'<test name="value" newName="newValue" name="newValue" />'
		'<test xml:lang="en" name="value" xml:lang="de" />')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]