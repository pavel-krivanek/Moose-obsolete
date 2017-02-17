instance creation
runWithProgress: aBlock description: aDescription length: aNumber
	^ self new 
		with: aBlock description: aDescription length: aNumber; 
		runWithProgress;
		yourself