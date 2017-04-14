tests
testWritingAndReadingInMSE
	| tempFile importedModel |
	tempFile := (FileSystem memory / 'files-test.mse') ensureCreateFile.
	multipleFileAnchor mooseModel exportToMSEStream: tempFile writeStream.
	importedModel := MooseModel new importFromMSEStream: tempFile readStream.
	self deny: multipleFileAnchor allFiles isEmpty