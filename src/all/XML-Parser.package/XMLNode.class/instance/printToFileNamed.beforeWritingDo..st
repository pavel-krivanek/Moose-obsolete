printing
printToFileNamed: aFileName beforeWritingDo: aBlock
	"Prints XML to the file aFileName after evaluating aBlock with the XMLWriter.
	Uses the encoding specified in the document's encoding attribute if
	supported or UTF-8 otherwise."

	self
		withNewWriteStreamOnFileNamed: aFileName
		do: [:writeStream |
			self
				printOn: writeStream
				beforeWritingDo: [:writer |
					"use the platform's line break because we're writing to a file"
					writer enablePlatformSpecificLineBreak.
					aBlock value: writer]]