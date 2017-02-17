testing
isFromSameContextAs: otherDuplication 
	 
	^(self referenceCode entity = otherDuplication referenceCode entity 
		and: 
			[self duplicateCode entity = otherDuplication duplicateCode entity]) 
		or: 
			[self referenceCode entity = otherDuplication duplicateCode entity 
				and: 
					[self duplicateCode entity = otherDuplication referenceCode entity]]