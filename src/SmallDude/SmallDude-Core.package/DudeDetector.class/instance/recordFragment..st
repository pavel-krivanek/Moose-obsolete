engine-private
recordFragment: aCodeFragment 
	"eliminate redundant code fragments" 
	 
	^fragments keys 
		detect: [:each | each = aCodeFragment] 
		ifNone: 
			["AbstractEntity register: aCodeFragment inModel: self mooseModel." 
			aCodeFragment]