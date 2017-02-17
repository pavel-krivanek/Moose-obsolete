tests
testActiveTagWriter
	| writer tagWriter |

	writer := XMLWriter new.
	self assert: writer activeTagWriter isNil.
	writer xml.
	self assert: writer activeTagWriter isNil.

	tagWriter := writer tag: 'one'.
	self assert: writer activeTagWriter == tagWriter.

	tagWriter with: [| newTagWriter |
		self assert: writer activeTagWriter == tagWriter.

		newTagWriter := writer startTag: 'three'.
		self assert: writer activeTagWriter == newTagWriter.
		newTagWriter write.
		self assert: writer activeTagWriter == tagWriter.
	
		newTagWriter := writer endTag: 'three'.
		self assert: writer activeTagWriter == newTagWriter.
		newTagWriter write.
		self assert: writer activeTagWriter == tagWriter].

	self assert: writer activeTagWriter isNil.