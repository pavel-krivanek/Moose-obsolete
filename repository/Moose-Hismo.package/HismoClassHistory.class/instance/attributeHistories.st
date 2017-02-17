accessing
attributeHistories
	
	attributeHistories isNil
		ifTrue:
			["		attributeHistories := self computeSubHistories: AttributeHistory new computedForEachVersionAs: [:version | version allAttributes] withDescription: 'Attribute Histores from ', self uniqueName, ' Class History'."
			attributeHistories := self referenceHistory allAttributeHistories
				select: [:each | each belongsTo = self]].
	^attributeHistories