accessing
node 
	^super node 
		==> [ :nodes | 
			PPXPathNode withTag: nodes first filter: nodes second ]