tests
testEntityReferenceUndeclaredInEntityValue
	| resolver |

	(resolver := DTDStaticExternalEntityResolver new)
		externalEntityAtURI: 'extern.dtd'
		put: '<!ENTITY unreferenced "%undeclared;">'.
	self
		should: [
			(SAXHandler on: '<!DOCTYPE root SYSTEM "extern.dtd"><root/>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on: '<!DOCTYPE root SYSTEM "extern.dtd"><root/>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				isValidating: false;
				parseDocument]
		raise: XMLWellFormednessException.

	"the spec only requires general entity refs in replacements to be
	well-formed, not declared, unless it's referenced too"
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY unreferenced "&undeclared;">
				]><root/>']
		raise: XMLWellFormednessException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY unreferenced "&undeclared;">
				]><root>&unreferenced;</root>']
		raise: XMLWellFormednessException.