tests
testHasActiveTagWriter
	| writer tagWriter |

	writer := XMLWriter new.
	self deny: writer hasActiveTagWriter.

	writer xml.
	self deny: writer hasActiveTagWriter.

	tagWriter := writer tag: 'one'.
	self assert: writer hasActiveTagWriter.

	tagWriter write.
	self deny: writer hasActiveTagWriter.

	tagWriter := writer startTag: 'two'.
	self assert: writer hasActiveTagWriter.

	tagWriter write.
	self deny: writer hasActiveTagWriter.

	tagWriter := writer endTag: 'two'.
	self assert: writer hasActiveTagWriter.

	tagWriter write.
	self deny: writer hasActiveTagWriter.