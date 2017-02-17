configuring
optimizeForLargeDocuments
	super optimizeForLargeDocuments.

	"use the non-caching attribute list class to save memory"
	self configuration attributeListClass: XMLAttributeList.