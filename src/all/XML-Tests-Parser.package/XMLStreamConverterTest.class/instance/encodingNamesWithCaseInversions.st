accessing
encodingNamesWithCaseInversions
	| encodingNamesWithCaseInversions |

	encodingNamesWithCaseInversions := self encodingNames copy.
	self encodingNames do: [:each |
		"add the case inversion, as well as its inversion"
		encodingNamesWithCaseInversions add:
			(self caseInvertedEncodingNameFrom:
				(encodingNamesWithCaseInversions add:
					(self caseInvertedEncodingNameFrom: each)))].
	^ encodingNamesWithCaseInversions.