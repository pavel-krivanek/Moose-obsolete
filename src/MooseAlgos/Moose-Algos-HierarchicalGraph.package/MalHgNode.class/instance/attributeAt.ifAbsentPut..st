accessing
attributeAt: aKey ifAbsentPut: aBlock
	"Returns attribute with given key, if no attribute exists with given key, use given block to put an attribute. "
	^ attributes at: aKey ifAbsentPut: aBlock.