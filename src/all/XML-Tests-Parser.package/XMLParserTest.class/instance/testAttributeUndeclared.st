tests
testAttributeUndeclared
	self
		shouldnt: [
			SAXHandler
				parse: '<!DOCTYPE root [<!ENTITY ignored "ignored">]><root name="value"/>'
				usingNamespaces:true
				validation: true]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ELEMENT root ANY>
					<!ATTLIST root name CDATA #IMPLIED>]><root name="value"></root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ELEMENT root ANY>]><root name="value"></root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ELEMENT root ANY>
					<!ATTLIST root name CDATA #IMPLIED>]><root newName="value"></root>']
		raise: XMLValidationException.