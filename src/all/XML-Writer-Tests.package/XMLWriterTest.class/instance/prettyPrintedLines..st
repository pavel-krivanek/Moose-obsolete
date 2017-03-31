private
prettyPrintedLines: anArrayOfLineArrays
	"takes an array of arrays where the first element of each is the indent level
	and the rest are the lines with that indent level"

	| printedFirstLine |

	printedFirstLine := false.
	^ String streamContents: [:stream |
		anArrayOfLineArrays do: [:each | | indentLevel |
			indentLevel := XMLPrettyPrintingWriterFormatter defaultIndentLevel + each first.
			2 to: each size do: [:lineIndex |
				printedFirstLine
					ifTrue: [
						stream nextPutAll: XMLWriter defaultLineBreak.
						indentLevel timesRepeat: [
							stream nextPutAll:
								XMLPrettyPrintingWriterFormatter defaultIndentString]]
					ifFalse: [printedFirstLine := true].
				stream nextPutAll: (each at: lineIndex)]]]