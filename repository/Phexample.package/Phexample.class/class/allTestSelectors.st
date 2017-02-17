accessing
allTestSelectors
	|selectors|
	selectors := self allSelectors copy.
	selectors removeAll: Phexample allSelectors.
	selectors := selectors select: 
		[ :each | self isTest: each ].
	^ selectors union: super allTestSelectors 