accessing
path 
	^$/ asParser optional, node, ($/ asParser, node ==> #second) star 
		==> [ :nodes | 
			OrderedCollection new
				add: nodes second;
				addAll: nodes third;
				asArray ]