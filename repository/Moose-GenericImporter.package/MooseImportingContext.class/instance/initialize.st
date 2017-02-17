initialize-release
initialize

	self entityKindsToBeExtracted: Set new.
	mergeClassAndMetaclass := self class defaultMergeClassAndMetaclass.
	computeAttributeTypes := false.
	"for subclasses import for the moment we just do the same as before but it should be discussed and probably should be set to false"
	importSubclasses := true.