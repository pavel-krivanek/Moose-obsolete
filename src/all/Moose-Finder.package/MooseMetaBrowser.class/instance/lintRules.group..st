private
lintRules: aCollectionOfLintRules group: aString

	| lintRules |
	lintRules := aCollectionOfLintRules select: [:rule| rule group = aString].
	^ RBCompositeLintRule 
			rules: lintRules asArray
			name: aString
