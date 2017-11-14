private
copiedAttributeDictionary
	"replaces the shared, empty order-preserving dictionary with a new
	mutable one ready for modification"
	^ attributeDictionary == self emptyAttributeDictionary
		ifTrue: [attributeDictionary := self copyEmptyAttributeDictionary]
		ifFalse: [attributeDictionary]