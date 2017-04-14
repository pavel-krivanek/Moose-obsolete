tests
testFormattingContent
	| formatter writer tagWriter commentWriter entityRefWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(tagWriter := writer tag: 'empty') write.
	self assert:
		(formatter
			receivedNext: #formatBeforeStartTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'empty').
	self assert:
		(formatter
			receivedNext: #formatAfterEndTag:
			with: tagWriter).

	(tagWriter := writer tag: 'not-empty')
		xmlns: 'defaultNS';
		attributeAt: 'name' put: 'value';
		with: [
			writer string: 'one'.
			(commentWriter := writer comment) string: 'two'.
			(entityRefWriter := writer entityRef) name: 'three'.
			writer string: 'four'].
	self assert:
		(formatter
			receivedNext: #formatBeforeStartTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'not-empty').
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

	self assert:
		(formatter
			receivedNextAll: #(formatBeforeComment: formatAfterComment:)
			with: commentWriter).

	self assert:
		(formatter
			receivedNextAll: #(formatBeforeEntityReference: formatAfterEntityReference:)
			with: entityRefWriter).

	self assert:
		(formatter
			receivedNext: #formatBeforeEndTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'not-empty').
	self assert:
		(formatter
			receivedNext: #formatAfterEndTag:
			with: tagWriter).

	writer outputsSelfClosingTags: false.
	(tagWriter := writer tag: 'empty') write.
	self assert:
		(formatter
			receivedNext: #formatBeforeStartTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'empty').
	self assert:
		(formatter
			receivedNext: #formatAfterStartTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNext: #formatBeforeEndTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'empty').
	self assert:
		(formatter
			receivedNext: #formatAfterEndTag:
			with: tagWriter).

	self assert:
		writer contents =
			('<empty />',
				'<not-empty xmlns="defaultNS" name="value">',
					'one<!--two-->&three;four',
				'</not-empty>',
				'<empty></empty>').