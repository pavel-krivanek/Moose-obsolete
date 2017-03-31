*famix-extensions-accessing
concernedClassesCollection
	"it returns the collection of the receiver's concerned classes (See #__concernedClassesCollection). Before returning this value it verifies if it is cached in the receiver's state under the properiety #concernedClasses."

	^self privateState cacheAt: #concernedClassesCollection
		ifAbsentPut: (self extensionClasses union: self localClasses)