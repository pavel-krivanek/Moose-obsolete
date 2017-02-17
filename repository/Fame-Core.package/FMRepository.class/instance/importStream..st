streaming
importStream: aReadStream

	| importer |
	importer := FMImporter new.
	importer repository: self.
	importer stream: aReadStream.
	importer run.
	self updateCache.	