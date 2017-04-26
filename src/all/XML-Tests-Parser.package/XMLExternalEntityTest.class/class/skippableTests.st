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
			testParsingExternalEntitiesLimit
			testParsingFile
			testParsingRetrievedURL
			testParsingURL)