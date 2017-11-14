class initialization
initializeEmptyAttributeDictionary
	"explictly initialized class inst vars are used for the empty
	dictionaries to simplify class initialization (on GS) and to
	speed up lazy dictionary instance creation"
	emptyAttributeDictionary := self emptyAttributeDictionaryClass new