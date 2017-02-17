as yet unclassified
checkCacheFor: aCanvas 

	pathCache ifNil: [ ^ self buildPathOn: aCanvas ].
	pathCache first == aCanvas surface ifFalse: [ ^ self buildPathOn: aCanvas ]