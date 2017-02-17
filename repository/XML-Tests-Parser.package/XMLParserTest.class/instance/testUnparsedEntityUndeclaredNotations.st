tests
testUnparsedEntityUndeclaredNotations
	| beforeNotation afterNotation |

	beforeNotation := '
		<!DOCTYPE test [
			<!ELEMENT test EMPTY>
			<!ENTITY notationEntity SYSTEM "note.txt" NDATA note>'.
	afterNotation := ']><test/>'.
	self
		should: [SAXHandler parse: beforeNotation, afterNotation]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler
				parse: beforeNotation, afterNotation
				usingNamespaces: true
				validation: false]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				beforeNotation, '<!NOTATION note SYSTEM "note.txt">', afterNotation]
		raise: XMLValidationException.