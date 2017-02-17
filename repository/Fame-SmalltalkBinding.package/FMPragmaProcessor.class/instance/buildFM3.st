running
buildFM3

	self queue: FM3Element.
	self queue: FM3MetaDescription.
	self queue: FM3PackageDescription.
	self queue: FM3PropertyDescription.
	self run.