private
parseExternalSubset
	| externalSubsetURI |

	externalSubsetURI :=
		self externalEntityResolver
			externalEntityURIFromPublicID: self externalSubsetPublicID
			systemID: self externalSubsetSystemID
			baseURI: self baseURI.

	"External subsets are stream-resolved so if they are local (stored on disk),
	they aren't kept entirely in memory during parsing. HTTP entities will be
	kept in memory regardless and this will just return a read stream on them."
	(self
		externalSubsetParserOn:
			(self externalEntityResolver streamResolveExternalEntityURI:
				externalSubsetURI)
		documentURI: externalSubsetURI asString)
		parseDocument.