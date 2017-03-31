tests
testElementsUndeclared
	self
		shouldnt: [
			"entity and notation declarations aren't enough to trigger
			DTD validation; at least one element or attlist declaration
			is needed"
			SAXHandler
				parse: '
					<!DOCTYPE root [
						<!ENTITY ignored "">
						<!NOTATION ignored2 PUBLIC "ignored2">
					]>
					<root/>'
				usingNamespaces:true
				validation: true]
		raise:XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ELEMENT root ANY>]><root><undeclared/></root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ATTLIST root name CDATA #IMPLIED>]><root/>']
		raise: XMLValidationException.