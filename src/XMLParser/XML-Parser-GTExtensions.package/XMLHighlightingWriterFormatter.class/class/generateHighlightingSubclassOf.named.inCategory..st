private
generateHighlightingSubclassOf: aFormatterClass named: aName inCategory: aCategory
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