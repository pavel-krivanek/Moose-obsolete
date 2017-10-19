accessing
generalizationSets: aModel
	<gtExample>
	<dependsOn: #emptyModel>
	| insuredItem house car insuredHouse nonInsuredHouse houseSet insuredSet |
	aModel name: 'Generalization Sets'.
	insuredItem := OPUMLClass new name: 'InsuredItem'.
	house := OPUMLClass new name: 'House'.
	car := OPUMLClass new name: 'Car'.
	insuredHouse := OPUMLClass new name: 'InsuredHouse'.
	nonInsuredHouse := OPUMLClass new name: 'NonInsuredHouse'.
	houseSet := OPUMLGeneralizationSet new
		name: 'house gs';
		isDisjoint: true.
	insuredSet := OPUMLGeneralizationSet new
		name: 'insured gs';
		isDisjoint: true;
		isCovering: true.
	houseSet generalizations
		add:
			(OPUMLGeneralization new
				general: insuredItem;
				specific: car);
		add:
			(OPUMLGeneralization new
				general: insuredItem;
				specific: insuredHouse).
	insuredSet generalizations
		add:
			(OPUMLGeneralization new
				general: house;
				specific: insuredHouse);
		add:
			(OPUMLGeneralization new
				general: house;
				specific: nonInsuredHouse).
	aModel
		packagedElements:
			{insuredItem.
			house.
			car.
			insuredHouse.
			nonInsuredHouse} asOrderedCollection.
	^ aModel