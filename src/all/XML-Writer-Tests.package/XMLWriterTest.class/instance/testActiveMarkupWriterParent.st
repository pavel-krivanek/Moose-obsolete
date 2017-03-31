tests
testActiveMarkupWriterParent
	| writer xmlDeclarationWriter tagWriter |

	writer := XMLWriter new.
	self assert: writer activeMarkupWriterParent isNil.
	xmlDeclarationWriter := writer xml.
	self
		assert: writer activeMarkupWriterParent isNil;
		assert: xmlDeclarationWriter parent isNil;
		assert: (writer parentOfMarkupWriter: xmlDeclarationWriter) isNil.

	tagWriter := writer tag: 'one'.
	self
		assert: writer activeMarkupWriterParent isNil;
		assert: tagWriter parent isNil;
		assert: (writer parentOfMarkupWriter: tagWriter) isNil.

	tagWriter with: [| newTagWriter |
		newTagWriter := writer tag: 'two'.
		self
			assert: writer activeMarkupWriterParent == tagWriter;
			assert: newTagWriter parent == tagWriter;
			assert: (writer parentOfMarkupWriter: newTagWriter) == tagWriter].

	self
		assert: writer activeMarkupWriterParent isNil;
		assert: tagWriter parent isNil;
		assert: (writer parentOfMarkupWriter: tagWriter) isNil.