tests
testEqualsSpecies
	| emptySpeciesList speciesListWithSingleElement speciesListWithElements |

	emptySpeciesList := self listSpecies new.
	speciesListWithSingleElement := self listSpecies with: self singleListItem.
	speciesListWithElements := self listSpecies newFrom: self listItems.
	self
		assertList: self emptyList equals: emptySpeciesList;
		assertList: self listWithSingleItem equals: speciesListWithSingleElement;
		assertList: self listWithItems equals: speciesListWithElements;
		denyList: self emptyList equals: speciesListWithSingleElement;
		denyList: self emptyList equals: speciesListWithElements;
		denyList: self listWithSingleItem equals: emptySpeciesList;
		denyList: self listWithSingleItem equals: speciesListWithElements;
		denyList: self listWithItems equals: emptySpeciesList;
		denyList: self listWithItems equals: speciesListWithSingleElement.