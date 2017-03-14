tests
testElementWhitespace
	self
		should: [SAXHandler parse: '<root name1="value1"name2="value2"/>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<root name1=''value1''name2="value2"/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [SAXHandler parse: '<root name1="value1" name2="value2"/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [
			SAXHandler parse: '
				<root
					name1
					   =
					"value1"
					name2
					   =
					"value2"
				/>']
		raise: XMLWellFormednessException.