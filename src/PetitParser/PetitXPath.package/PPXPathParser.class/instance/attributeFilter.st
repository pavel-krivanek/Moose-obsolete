accessing
attributeFilter 
	^super attributeFilter 
		==> [ :nodes | PPXPathAttributeFilter withName: nodes first value: nodes second ]