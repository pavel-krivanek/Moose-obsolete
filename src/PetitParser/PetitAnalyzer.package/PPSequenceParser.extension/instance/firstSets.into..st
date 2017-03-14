*petitanalyzer-private
firstSets: aFirstDictionary into: aSet
	| nullable |
	parsers do: [ :parser |
		nullable := false.
		(aFirstDictionary at: parser) do: [ :each |
			each isNullable
				ifTrue: [ nullable := true ]
				ifFalse: [ aSet add: each ] ].
		nullable
			ifFalse: [ ^ self ] ].
	aSet add: PPSentinel instance