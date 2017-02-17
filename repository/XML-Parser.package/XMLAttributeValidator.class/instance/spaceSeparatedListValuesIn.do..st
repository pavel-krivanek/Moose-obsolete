private
spaceSeparatedListValuesIn: aSpaceSeparatedList do: aBlock
	NormalizedSpace
		xmlSplit: aSpaceSeparatedList
		do: aBlock