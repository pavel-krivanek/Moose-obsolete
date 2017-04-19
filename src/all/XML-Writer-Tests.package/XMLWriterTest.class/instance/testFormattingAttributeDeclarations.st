tests
testFormattingAttributeDeclarations
	| formatter writer doctypeWriter firstDeclarationWriter secondDeclarationWriter thirdDeclarationWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(doctypeWriter := writer doctype)
		root: 'one';
		with: [
			(firstDeclarationWriter := writer attributeDeclaration)
				element: 'one';
				attribute: 'one';
				type: 'CDATA';
				defaultPragma: '#FIXED';
				defaultValue: 'default'.
			(secondDeclarationWriter := writer attributeDeclaration)
				element: 'one';
				attribute: 'two';
				type: '(four | five)';
				defaultPragma: '#IMPLIED'.
			(thirdDeclarationWriter := writer attributeDeclaration)
				element: 'one';
				attribute: 'three';
				type: 'NOTATION (six | seven)';
				defaultPragma: '#IMPLIED'.].
	self assert:
		(formatter
			receivedNext: #formatBeforeDoctypeDeclaration:
			with: doctypeWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'one').
	self assert:
		(formatter
			receivedNext: #formatBeforeInternalSubset:
			with: doctypeWriter).

	self assert:
		(formatter
			receivedNext: #formatBeforeDeclaration:
			with: firstDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'one').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'one').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'default').
	self assert:
		(formatter
			receivedNext: #formatAfterDeclaration:
			with: firstDeclarationWriter).

	self assert:
		(formatter
			receivedNext: #formatBeforeDeclaration:
			with: secondDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'one').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'two').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'four').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'five').
	self assert:
		(formatter
			receivedNext: #formatAfterDeclaration:
			with: secondDeclarationWriter).

	self assert:
		(formatter
			receivedNext: #formatBeforeDeclaration:
			with: thirdDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'one').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'three').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'six').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'seven').
	self assert:
		(formatter
			receivedNext: #formatAfterDeclaration:
			with: thirdDeclarationWriter).

	self assert:
		(formatter
			receivedNextAll: #(formatAfterInternalSubset: formatAfterDoctypeDeclaration:)
			with: doctypeWriter).

	self assert:
		writer contents =
			('<!DOCTYPE one [',
					'<!ATTLIST one one CDATA #FIXED "default">',
					'<!ATTLIST one two (four | five) #IMPLIED>',
					'<!ATTLIST one three NOTATION (six | seven) #IMPLIED>',
				']>').