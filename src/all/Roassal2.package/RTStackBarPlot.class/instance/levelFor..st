private - utility
levelFor: value 
	| temp |
	temp := self numberOfValuesPerRow -1.
	^ temp <= 0 
		ifTrue: [ 1 ]
		ifFalse: [ (value-1) / temp]