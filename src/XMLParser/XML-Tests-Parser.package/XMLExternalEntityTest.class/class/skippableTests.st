accessing
skippableTests
	^ #(testExternalSubsetReadLimit
			testOnFileNamed
			testOnURL
			testOnURLUpToLimit
			testParsingDocBookArticle
			testParsingDocBookExample
			testParsingEncodedFile
			testParsingEncodedFileWithBOM
			testParsingEncodedFileWithEncodingAttribute
			testParsingEncodedFileWithEncodingAttributeAndBOM
			testParsingExternalEntities
			testParsingFile
			testParsingRetrievedURL
			testParsingURL)