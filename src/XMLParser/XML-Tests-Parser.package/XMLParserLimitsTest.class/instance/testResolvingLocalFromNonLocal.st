tests
testResolvingLocalFromNonLocal
	| parser |

	self
		should: [
			(parser :=
				SAXHandler
					on: '<!DOCTYPE root SYSTEM "file://local/uri">'
					documentURI: 'http://www.example.com')
				externalEntityResolver resolvesLocalFromNonLocal: false.
			parser
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLLimitException.