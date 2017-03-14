tests
testElementAnyDeclaration
	self
		shouldnt: [
			SAXHandler parse: 
				'<!DOCTYPE one [
					<!ELEMENT one ANY>
					<!ELEMENT two ANY>]>
				<one>one<two><![CDATA[two]]><two /></two>three</one>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse: 
				'<!DOCTYPE root [
					<!ELEMENT root ANY>
					<!ELEMENT two ANY>]>
				<root><two></two></root>']
		raise: XMLValidationException.