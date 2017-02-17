setUp
setUp
	| detector importer | 
	model := MooseModel new.
	importer := MoosePharoImporterTask new
			model: model.
	importer addClass: DudeAClass.
	importer addClass: DudeAnotherClass.
	importer run.
	detector := DudeDetector
		new: DudeTextFiles "how are we looking at entities? - defines the level of parsing / cleaning - see SmallDudeEntitySpecies package for other kinds of parsing"
		from: model allClasses entities "what are we looking at?"
		withStrategy: [:str1 :str2 | str1 size > 0 and: [str1 = str2]] "the string compare strategy"
		andObserver: DudeObserver default "just in case you would like to see the progress...." 
		inModel: model.
	detector getMultiplicationsWith1032	"find multiplications"