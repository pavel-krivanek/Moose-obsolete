tests
testAttributeValueWithAngleBrackets
	self
		should: [SAXHandler parse: '<test name="<test name=''value''/>"/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [SAXHandler parse: '<test name="&lt;test name=''value''/>"/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [SAXHandler parse: '<test name=''&lt;test name="value"/>''/>']
		raise: XMLWellFormednessException.