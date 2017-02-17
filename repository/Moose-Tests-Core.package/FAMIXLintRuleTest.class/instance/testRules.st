tests
testRules
	{
		FAMIXMetaModelClassesNotDeclaredInFameRule new.
		FAMIXMetaModelClassesShouldNotOverrideRule new }
		do: [ :rule | RBSmalllintChecker runRule: rule ].