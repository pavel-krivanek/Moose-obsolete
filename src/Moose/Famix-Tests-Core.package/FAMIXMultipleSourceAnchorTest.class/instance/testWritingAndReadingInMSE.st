as yet unclassified
testWritingAndReadingInMSE
	| mseFileName aStream importedModel|
	mseFileName := 'mutliFileAnchor.mse'.
	aStream := (StandardFileStream forceNewFileNamed: mseFileName).
	multipleFileAnchor mooseModel exportToMSEStream:aStream.
	aStream close.
	importedModel := MooseModel new importFromMSEStream:(StandardFileStream readOnlyFileNamed: mseFileName).
	self deny: multipleFileAnchor allFiles isEmpty.
	 mseFileName asFileReference delete.
	
	