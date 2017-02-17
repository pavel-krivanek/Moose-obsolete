tests
testFormattingUnsafeTagWriters
	| formatter writer tagWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(tagWriter := writer startTag: 'test')
		xmlns: 'defaultNS';
		attributeAt: 'name' put: 'value';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforeStartTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'defaultNS').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'value').
	self assert:
		(formatter
			receivedNext: #formatAfterStartTag:
			with: tagWriter).
	(tagWriter := writer endTag: 'empty') write.
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeEndTag: formatAfterEndTag:)
			with: tagWriter).