private
metamodelLintRules

	| basicRules rules |
	basicRules := RBCompositeLintRule rulesFor: RBBasicLintRule.
	rules := RBCompositeLintRule rules: 
		{self lintRules: basicRules group: 'Fame'. 
		self lintRules: basicRules group: 'FAMIX' }
			name: 'Fame/FAMIX checks'.
	^ RBCompositeLintRule rules: {rules} name: 'Metamodel checks'