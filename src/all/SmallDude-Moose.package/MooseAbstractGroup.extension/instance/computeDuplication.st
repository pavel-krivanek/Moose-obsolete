*SmallDude-Moose-private
computeDuplication 
	 
	| detector chains | 
	detector := DudeDetector 
		new: DudeJavaFiles 
		from: self entities 
		andObserver: DudeObserver defaultObserverForTextPreprocessing 
		inModel: self mooseModel. 
	detector observer: DudeObserver defaultObserverForDupDetecting. 
	chains := detector getMultiplicationsWith1032DisplayingProgress