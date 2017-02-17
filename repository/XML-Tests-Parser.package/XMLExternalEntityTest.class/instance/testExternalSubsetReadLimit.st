tests
testExternalSubsetReadLimit
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testExternalSubsetReadLimit.

	self tempFileManager newFileHandleDo: [:fileHandle |
		| xml externalSubset parser |

		externalSubset := '<?xml encoding="UTF-8"?><!ELEMENT test EMPTY>'.
		self tempFileManager
			createFileWithContents: externalSubset
			forHandle: fileHandle.
		xml := '<!DOCTYPE test SYSTEM "', fileHandle path, '"><test/>'.

		self
			shouldnt: [
				(parser := SAXHandler on: xml)
					externalEntityResolver externalSubsetReadLimit:
						externalSubset size.
				parser
					resolvesExternalEntities: true;
					parseDocument]
			raise: XMLLimitException.

		self
			should: [
				(parser := SAXHandler on: xml)
					externalEntityResolver externalSubsetReadLimit:
						externalSubset size - 1.
				parser
					resolvesExternalEntities: true;
					parseDocument]
			raise: XMLLimitException].