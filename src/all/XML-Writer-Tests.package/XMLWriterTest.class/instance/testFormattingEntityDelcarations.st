tests
testFormattingEntityDelcarations
	| formatter writer xmlDeclarationWriter doctypeWriter firstDeclarationWriter secondDeclarationWriter thirdDeclarationWriter fourthDeclarationWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(doctypeWriter := writer doctype)
		root: 'test';
		with: [
			(firstDeclarationWriter := writer entityDeclaration)
				isParameter: true;
				name: 'one';
				replacement: 'replacement'.
			(secondDeclarationWriter := writer entityDeclaration)
				name: 'two';
				publicID: 'second';
				systemID: 'two.ent'.
			(thirdDeclarationWriter := writer entityDeclaration)
				name: 'three';
				systemID: 'three.ent'.
			(fourthDeclarationWriter := writer entityDeclaration)
				name: 'four';
				publicID: 'fourth';
				systemID: 'four.ent';
				ndata: 'notation'].
	self assert:
		(formatter
			receivedNext: #formatBeforeDoctypeDeclaration:
			with: doctypeWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'test').
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
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'replacement').
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
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'second').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'two.ent').
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
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'three.ent').
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
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'fourth').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'four.ent').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'notation').
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
			('<!DOCTYPE test [',
					'<!ENTITY % one "replacement">',
					'<!ENTITY two PUBLIC "second" "two.ent">',
					'<!ENTITY three SYSTEM "three.ent">',
					'<!ENTITY four PUBLIC "fourth" "four.ent" NDATA notation>',
				']>').