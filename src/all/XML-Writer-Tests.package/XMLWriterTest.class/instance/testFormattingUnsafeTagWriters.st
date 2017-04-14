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
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'test').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'xmlns').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'defaultNS').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'name').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'value').
	self assert:
		(formatter
			receivedNext: #formatAfterStartTag:
			with: tagWriter).

	(tagWriter := writer endTag: 'test') write.
	self assert:
		(formatter
			receivedNext: #formatBeforeEndTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'test').
	self assert:
		(formatter
			receivedNext: #formatAfterEndTag:
			with: tagWriter).

	self assert:
		writer contents =
			'<test xmlns="defaultNS" name="value"></test>'.