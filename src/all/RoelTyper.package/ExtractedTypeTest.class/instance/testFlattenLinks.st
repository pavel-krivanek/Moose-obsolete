tests
testFlattenLinks

	|et1 et2|
	et1 := ExtractedType basicNew initialize.
	et2 := ExtractedType basicNew initialize.
	et1 addReverseLinkedExtractedType: et2.
	et1 flattenLinks.
	et2 flattenLinks.