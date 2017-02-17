accessing
attributeAt: aKey ifAbsent: aBlock
	"Returns attribute with given key, given block is run if there is no element with given key."
	^ attributes at: aKey ifAbsent: aBlock.