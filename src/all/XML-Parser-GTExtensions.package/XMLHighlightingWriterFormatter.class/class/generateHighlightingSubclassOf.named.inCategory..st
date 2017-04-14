private
generateHighlightingSubclassOf: aFormatterClass named: aName inCategory: aCategory
	"
	self
		generateHighlightingSubclassOf: XMLPrologPrettyPrintingWriterFormatter
		named: #XMLHighlightingPrologPrettyPrintingWriterFormatter
		inCategory: self category.
	self
		generateHighlightingSubclassOf: XMLPrettyPrintingWriterFormatter
		named: #XMLHighlightingPrettyPrintingWriterFormatter
		inCategory: self category.
	self
		generateHighlightingSubclassOf: XMLCanonicalWriterFormatter
		named: #XMLHighlightingCanonicalWriterFormatter
		inCategory: self category.
	"
	| newSubclass |

	(aFormatterClass == self
		or: [aFormatterClass class inheritsFrom: self])
		ifTrue: [
			^ aFormatterClass
				subclass: aName asSymbol
				instanceVariableNames: ''
				classVariableNames: ''
				category: aCategory asSymbol].

	newSubclass :=
		aFormatterClass
			subclass: aName asSymbol
			instanceVariableNames: 'highlighter'
			classVariableNames: ''
			category: aCategory asSymbol.
	self selectors do: [:each |
		newSubclass
			compile: (self sourceCodeAt: each)
			classified: (self whichCategoryIncludesSelector: each)].

	^ newSubclass.