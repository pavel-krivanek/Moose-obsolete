tests
notTested_AllPropertyCommented
	| allProps |
	"MSE properties with opposite"
	allProps := SystemNavigation new allMethods select: [:e | e hasPragmaNamed: #MSEProperty:type:opposite: ].
	self assert: (allProps select: [ :m | m pragmas noneSatisfy: [:p | p keyword = #MSEComment: ] ]) size
		equals: 0.
		
	"MSE properties without opposite"
	allProps := SystemNavigation new allMethods select: [:e | e hasPragmaNamed: #MSEProperty:type: ].
	self assert: (allProps select: [ :m | m pragmas noneSatisfy: [:p | p keyword = #MSEComment: ] ]) size
		equals: 0.
