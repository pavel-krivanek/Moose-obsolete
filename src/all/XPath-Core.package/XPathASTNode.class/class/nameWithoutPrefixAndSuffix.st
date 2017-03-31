private
nameWithoutPrefixAndSuffix
	^ (self name asString allButFirst: 'XPathAST' size)
		allButLast: 'Node' size