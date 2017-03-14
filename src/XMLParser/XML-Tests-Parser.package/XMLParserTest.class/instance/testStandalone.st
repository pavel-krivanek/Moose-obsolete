tests
testStandalone
	| xmlWithDTD standaloneXMLWithDTD resolver |

	xmlWithDTD := self addressBookXMLWithDTD.
	standaloneXMLWithDTD :=
		xmlWithDTD
			copyReplaceAll: '?>'
			with: ' standalone="yes" ?>'.
	"an empty static resolver that won't be able to resolve the DTD system ID"
	resolver := DTDStaticExternalEntityResolver new.
	self
		shouldnt: [
			(SAXHandler on: xmlWithDTD)
				externalEntityResolver: resolver copy;
				parseDocument]
		raise: XMLParserException.
	self
		should: [
			(SAXHandler on: xmlWithDTD)
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLParserException.
	self
		should: [
			(SAXHandler on: xmlWithDTD)
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				isValidating: false;
				parseDocument]
		raise: XMLParserException.

	self
		shouldnt: [
			(SAXHandler on: standaloneXMLWithDTD)
				externalEntityResolver: resolver copy;
				parseDocument]
		raise: XMLParserException.
	"with validation, standlone external subsets must be retrieved"
	self
		should: [
			(SAXHandler on: standaloneXMLWithDTD)
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLParserException.
	"but without validation, they are ignored"
	self
		shouldnt: [
			(SAXHandler on: standaloneXMLWithDTD)
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				isValidating: false;
				parseDocument]
		raise: XMLParserException.