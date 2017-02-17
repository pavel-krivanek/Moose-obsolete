tests
testCombiningAbsoluteURIs
	| domainURI fullURI fileURI |

	domainURI := self domainURIString asXMLURI.
	fullURI := self fullURIString asXMLURI.
	fileURI := self fileURIString asXMLURI.
	self
		assert: domainURI / self fullURIString = fullURI;
		assert: domainURI / self domainURIString = domainURI;
		assert: domainURI / self fileURIString = fileURI;
		assert: fullURI / self fullURIString = fullURI;
		assert: fullURI / self domainURIString = domainURI;
		assert: fullURI / self fileURIString = fileURI;
		assert: fileURI / self fullURIString = fullURI;
		assert: fileURI / self domainURIString = domainURI;
		assert: fileURI / self fileURIString = fileURI.