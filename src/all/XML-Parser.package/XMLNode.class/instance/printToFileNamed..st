printing
printToFileNamed: aFileName
	"Prints XML to the file aFileName. Uses the encoding specified in the
	document's encoding attribute if supported or UTF-8 otherwise."

	self
		withNewWriteStreamOnFileNamed: aFileName
		do: [:writeStream |
			self
				printOn: writeStream
				beforeWritingDo: [:writer |
					"use the platform's line break because we're writing to a file"
					writer enablePlatformSpecificLineBreak]]