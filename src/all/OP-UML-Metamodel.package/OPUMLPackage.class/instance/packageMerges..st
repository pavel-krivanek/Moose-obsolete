accessing
packageMerges: aPackageMerge
	"References the PackageMerges that are owned by this Package."
	self packageMerges
		removeAll;
		addAll: aPackageMerge