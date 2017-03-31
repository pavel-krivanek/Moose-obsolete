running
testPackages
	metamodel packages size should = 1.
	metamodel packages anyOne name isSymbol should beTrue.
	metamodel packages anyOne name should = #RPG