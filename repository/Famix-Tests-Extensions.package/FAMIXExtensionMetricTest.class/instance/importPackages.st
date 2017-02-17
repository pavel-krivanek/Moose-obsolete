setup
importPackages

	p1m1 := model1 entityNamed:  #'Moose-TestResources-KGB-P1FullReferencer'.
	p2m1 := model1 entityNamed:  #'Moose-TestResources-KGB-P2InteractedReferencerReferee'.
	
	p1m2 := model2 entityNamed:  #'Moose-TestResources-PackageBlueprint-P1'.
	p2m2 := model2 entityNamed:  #'Moose-TestResources-PackageBlueprint-P2'.
	p3m2 := model2 entityNamed:  #'Moose-TestResources-PackageBlueprint-P3'.
	p4m2 := model2 entityNamed:  #'Moose-TestResources-PackageBlueprint-P4'.