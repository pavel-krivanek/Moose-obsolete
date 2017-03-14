tests
testIsEmpty
	| uri |

	self allURIStringsDo: [:each |
		uri := each asXMLURI.
		each = ''
			ifTrue: [self assert: uri isEmpty]
			ifFalse: [self deny: uri isEmpty].

		uri
			parseURIStringIfUnparsed;
			uriString: nil.
		each isEmpty
			ifTrue: [self assert: uri isEmpty]
			ifFalse: [self deny: uri isEmpty]].

	uri := '//:?#' asXMLURI.
	self assert: uri isEmpty.
	uri
		parseURIStringIfUnparsed;
		uriString: nil.
	self assert: uri isEmpty.