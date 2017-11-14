accessing
isInCDataSectionResults
	^ isInCDataSectionResults ifNil: [isInCDataSectionResults := OrderedCollection new]