adding
document: scriptBlock
	| importer builder |
	importer := FMImporter new.
	importer repository: self.
	builder := self builderClass new.
	builder client: importer.
	builder document: scriptBlock