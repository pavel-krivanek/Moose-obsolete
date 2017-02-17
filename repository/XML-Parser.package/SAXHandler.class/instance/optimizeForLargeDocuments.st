configuring
optimizeForLargeDocuments
	"use this for faster parsing/less memory use with large documents"

	self
		isValidating: false;
		usesNamespaces: false;
		documentReadLimit: nil