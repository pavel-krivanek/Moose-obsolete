private
if: selectorParts in: ast includes: aSymbol do: aBlock

	| index |
	
	index := selectorParts indexOf: aSymbol ifAbsent: [^ self].
	aBlock value: (ast arguments at: index).