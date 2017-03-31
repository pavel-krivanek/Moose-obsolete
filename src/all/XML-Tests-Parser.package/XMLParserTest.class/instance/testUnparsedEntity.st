tests
testUnparsedEntity
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!NOTATION note PUBLIC "-//ext//note//EN">
			<!ENTITY unparsedEntity SYSTEM "note.txt" NDATA note>
			<!ELEMENT root EMPTY>
			<!ATTLIST root notation ENTITY #REQUIRED>
		]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<root notation="unparsedEntity" />']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root notation="undeclaredUnparsedEntity" />']
		raise: XMLValidationException.