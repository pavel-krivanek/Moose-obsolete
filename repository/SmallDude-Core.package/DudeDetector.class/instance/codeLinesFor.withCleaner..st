engine-parsing
codeLinesFor: anEntity withCleaner: aCleaner
	"retrieves source code for anEntity, then splits it in lines (keeping empty lines), then cleans it, then creates DudeSourceCodeLine for each non empty line.
	a DudeSourceCodeLine knows its entity, the text of its line, and its line number in the original source code"
	| iline |

	iline := 0. "is incremented before being used, so actually starts at 1"
	^(aCleaner clean: ((anEntity sourceText asString) subStringsKeepingEmptyFields: (String cr , String lf))) 
		collect: [:aLine |
			iline := iline + 1.
			aLine isEmpty
				ifTrue: [ nil ] "must do the collect: before the thenSelect: so that line number (iline) are correct"
				ifFalse:	[DudeSourceCodeLine newText: aLine lineno: iline inEntity: anEntity]
		]
		thenSelect: [ :aDudeLine | aDudeLine notNil ]