samples
sampleGeneralizationSets
	| model insuredItem house car insuredHouse nonInsuredHouse houseSet insuredSet |
	model := OPUMLModel new name: 'Generalization Sets'.
	insuredItem := OPUMLClass new name: 'InsuredItem'.
	house := OPUMLClass new name: 'House'.
	car := OPUMLClass new name: 'Car'.
	insuredHouse := OPUMLClass new name: 'InsuredHouse'.
	nonInsuredHouse := OPUMLClass new name: 'NonInsuredHouse'.
	houseSet := OPUMLGeneralizationSet new name: 'house gs'; isDisjoint: true.
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
	model
		packagedElements:
			{insuredItem.
			house.
			car.
			insuredHouse.
			nonInsuredHouse} asOrderedCollection.
	^ model