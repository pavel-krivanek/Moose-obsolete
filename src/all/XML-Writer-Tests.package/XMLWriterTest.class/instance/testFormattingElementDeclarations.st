tests
testFormattingElementDeclarations
	| formatter writer doctypeWriter firstDeclarationWriter secondDeclarationWriter thirdDeclarationWriter fourthDeclarationWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(doctypeWriter := writer doctype)
		root: 'one';
		with: [
			(firstDeclarationWriter := writer elementDeclaration)
				name: 'one';
				contentModel: '(two, three)'.
			(secondDeclarationWriter := writer elementDeclaration)
				name: 'two';
				contentModel: '(#PCDATA | four)*'.
			(thirdDeclarationWriter := writer elementDeclaration)
				name: 'three';
				contentModel: 'ANY'.
			(fourthDeclarationWriter := writer elementDeclaration)
				name: 'four';
				contentModel: 'EMPTY'].
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
			with: 'two').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'three').
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
			with: 'two').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'four').
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
			with: 'three').
	self assert:
		(formatter
			receivedNext: #formatAfterDeclaration:
			with: thirdDeclarationWriter).

	self assert:
		(formatter
			receivedNext: #formatBeforeDeclaration:
			with: fourthDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'four').
	self assert:
		(formatter
			receivedNext: #formatAfterDeclaration:
			with: fourthDeclarationWriter).

	self assert:
		(formatter
			receivedNextAll: #(formatAfterInternalSubset: formatAfterDoctypeDeclaration:)
			with: doctypeWriter).

	self assert:
		writer contents =
			('<!DOCTYPE one [',
					'<!ELEMENT one (two, three)>',
					'<!ELEMENT two (#PCDATA | four)*>',
					'<!ELEMENT three ANY>',
					'<!ELEMENT four EMPTY>',
				']>').