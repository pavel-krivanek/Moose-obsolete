tests
testAttributeXMLIDDTDValidation
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE one [
					<!ELEMENT one ANY>
					<!ELEMENT two ANY>
					<!ATTLIST one xml:id ID #IMPLIED>
					<!ATTLIST two xml:id ID #IMPLIED>]>
				<one xml:id="validOne">
					<two xml:id="validTwo"/>
				</one>']
		raise: XMLValidationException.

	#('<!DOCTYPE one [
			<!ELEMENT one ANY>
			<!ATTLIST one xml:id CDATA #IMPLIED>]>
		<one/>'
		'<!DOCTYPE one [
			<!ELEMENT one ANY>
			<!ATTLIST one
				xml:id ID #IMPLIED
				id ID #IMPLIED>]>
		<one/>'
		'<!DOCTYPE one [
			<!ELEMENT one ANY>
			<!ATTLIST one
				id ID #IMPLIED
				xml:id ID #IMPLIED>]>
		<one/>'
		'<!DOCTYPE one [
			<!ELEMENT one ANY>
			<!ATTLIST one xml:id ID #IMPLIED>]>
		<one xml:id="invalid:id"/>'
		'<!DOCTYPE one [
			<!ELEMENT one ANY>
			<!ELEMENT two ANY>
			<!ATTLIST one xml:id ID #IMPLIED>
			<!ATTLIST two xml:id ID #IMPLIED>]>
		<one xml:id="duplicate">
			<two xml:id="duplicate"/>
		</one>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: each)
						isValidating: false;
						parseDocument]
				raise: XMLValidationException].