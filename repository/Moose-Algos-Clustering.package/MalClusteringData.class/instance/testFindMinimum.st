private
testFindMinimum
	| pValue pFoundA0 pFoundB0 column0 temp row0 |
	self findMinimum.
	pValue := value.
	pFoundA0 := foundA0.
	pFoundB0 := foundB0.
	value := MalUnlimited positive.

	2
to: indices size
do:
[:column | 
			
		column0 := indices at: column.
	
		1
to: column - 1
do:
[:row | 

			temp := (partialColumns at: column0) at: (row0 := indices at: row).
			temp < value
ifTrue:
[value := temp.
foundA0 := row0.
foundB0 := column0]]
	].
	[pValue = value & pFoundA0 = foundA0 & pFoundB0 = foundB0] assert.

	value := pValue.
	foundA0 := pFoundA0.
	foundB0 := pFoundB0