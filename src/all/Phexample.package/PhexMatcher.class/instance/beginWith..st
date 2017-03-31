expecting-string
beginWith: aPrefix
	^self expect: aPrefix using: #beginsWith: 
	