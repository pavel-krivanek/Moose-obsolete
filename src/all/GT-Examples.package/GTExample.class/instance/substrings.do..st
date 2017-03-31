private
substrings: aString do: aBlock
	aString gtExampleSubstrings do: [ :each | 
		aBlock value: each ]