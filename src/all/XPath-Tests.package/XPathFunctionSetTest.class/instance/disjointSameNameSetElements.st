accessing
disjointSameNameSetElements
	"these functions are different from #setElements, but because they
	are stub subclasses of them, they have the same function names"
	^ Array
		with: XPathOtherCeilingFunction
		with: XPathOtherFloorFunction
		with: XPathOtherRoundFunction
		with: XPathOtherSumFunction