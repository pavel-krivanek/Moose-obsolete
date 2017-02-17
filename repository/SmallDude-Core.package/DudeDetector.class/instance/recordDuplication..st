engine-private
recordDuplication: aDup 
	 
	| survivor | 
	"eliminate redundant code fragments" 
	aDup dupCode: (self recordFragment: aDup duplicateCode). 
	aDup refCode: (self recordFragment: aDup referenceCode). 
	self mooseModel add: aDup. 
	fragments 
		at: aDup duplicateCode 
		ifPresent: 
			[:aMulti |  
			survivor := aMulti. 
			fragments 
				at: aDup referenceCode 
				ifAbsent: 
					[fragments 
						at: aDup referenceCode 
						put: survivor. 
					survivor absorb: aDup. 
					^nil]. 
			survivor 
				absorb: aDup; 
				absorbAll: (fragments at: aDup referenceCode). 
			(fragments at: aDup referenceCode) fragments 
				do: [:fragment | fragments at: fragment put: survivor]. 
			^nil]. 
	fragments 
		at: aDup referenceCode 
		ifPresent: 
			[:aMulti |  
			fragments 
				at: aDup duplicateCode 
				put: aMulti. 
			aMulti absorb: aDup. 
			^nil]. 
	survivor := DudeMultiplication newFrom: aDup. 
	fragments 
		at: aDup referenceCode 
		put: survivor. 
	fragments 
		at: aDup duplicateCode 
		put: survivor