private
generateStandardURICombiningTest
	"self generateStandardURICombiningTest"
	| readStream isFirstTest source |

	readStream := self standardURICombiningTestTemplate readStream.
	isFirstTest := true.
	source :=
		String streamContents: [:writeStream |
			writeStream nextPutAll: 'testStandardURICombining
	| baseURI |

	baseURI := ''', self standardURICombiningTestBaseURI, ''' asXMLURI.
	self'.
			[readStream atEnd]
				whileFalse: [| argument result |
					readStream skipTo: $".
					argument := readStream upTo: $".
					readStream skipTo: $".
					result := readStream upTo: $".
					(argument isEmpty and: [result isEmpty])
						ifFalse: [
							isFirstTest
								ifTrue: [isFirstTest := false]
								ifFalse: [writeStream nextPut: $;].
							writeStream nextPutAll: '
		assert: (baseURI / ''', argument, ''' asXMLURI) = ''', result, ''' asXMLURI']]].

	self
		compile: source
		classified: 'tests'.