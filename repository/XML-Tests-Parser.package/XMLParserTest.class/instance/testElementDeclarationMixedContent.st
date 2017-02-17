tests
testElementDeclarationMixedContent
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root (#PCDATA | one | two | three)*>
			<!ELEMENT one EMPTY>
			<!ELEMENT two (#PCDATA)>
			<!ELEMENT three (#PCDATA)*>
			<!ELEMENT four EMPTY>]>'.
	self
		shouldnt: [
			SAXHandler parse:
				dtd, '<root>text<one/><two><![CDATA[text]]></two></root>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				dtd, '<root><three>text<!--comment--></three></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><four/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><two><three/></two></root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse: "missing *"
				'<!DOCTYPE root [<!ELEMENT root (#PCDATA|one)>]><root/>']
		raise: XMLWellFormednessException.
	'+*?,' do: [:each |
		self
			should: [
				SAXHandler parse:
					'<!DOCTYPE root [<!ELEMENT two (#PCDATA', each asString, ')>]><root/>']
			raise: XMLWellFormednessException].