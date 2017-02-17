as yet unclassified
allTestSelectors 
	| selectors |
	selectors := self selectors select: [ :each | each beginsWith: 'should' ].
	^ selectors union: super allTestSelectors 