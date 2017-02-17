accessing
latePopulateContents


	self titlesAndParts do: [:anAssoc | 
		anAssoc value wizardPane: self wizardPane.
		anAssoc value latePopulateContents].