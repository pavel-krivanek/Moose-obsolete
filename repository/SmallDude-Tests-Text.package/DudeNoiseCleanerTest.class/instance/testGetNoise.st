testing
testGetNoise
	| aNoiseCleaner noises |
	aNoiseCleaner := DudeNoiseCleaner new.
	noises := aNoiseCleaner getNoise.
	self assert: (noises at: 1) equals: 'break;'.
	self assert: (noises at: 2) equals: 'else'.
	self assert: (noises at: 3) equals: '{'.
	self assert: (noises at: 4) equals: '}'