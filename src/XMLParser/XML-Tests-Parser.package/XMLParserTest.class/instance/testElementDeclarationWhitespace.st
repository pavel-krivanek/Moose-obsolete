tests
testElementDeclarationWhitespace
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE test [<!ELEMENTtest (#PCDATA)>]><test/>']
		raise: XMLWellFormednessException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE test [<!ELEMENT test(#PCDATA)>]><test/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE test [<!ELEMENT test (	#PCDATA	)   >]><test/>']
		raise: XMLWellFormednessException.