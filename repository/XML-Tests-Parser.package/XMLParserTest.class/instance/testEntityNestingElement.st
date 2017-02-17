tests
testEntityNestingElement
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE test [
					<!ENTITY total1 "<a name=''value''/>">
					<!ENTITY total2 "<b>&total1;</b>">
					<!ENTITY total3 "<c>&total1;&total2;</c>">
				]><test>&total1;&total2;&total3;</test>']
		raise: XMLWellFormednessException.