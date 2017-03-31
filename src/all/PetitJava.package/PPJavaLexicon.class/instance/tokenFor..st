utility
tokenFor: aString

	^self asToken: (keywords at: aString 
						ifAbsent: [separators at: aString 
							ifAbsent: [operators at: aString] ])