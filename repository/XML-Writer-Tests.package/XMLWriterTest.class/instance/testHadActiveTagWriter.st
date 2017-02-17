tests
testHadActiveTagWriter
	| writer tagWriter |

	writer := XMLWriter new.
	self deny: writer hadActiveTagWriter.

	writer xml.
	self deny: writer hadActiveTagWriter.

	tagWriter := writer tag: 'one'.
	self assert: writer hadActiveTagWriter.

	tagWriter write.
	self assert: writer hadActiveTagWriter.