default
defaultObserverForTextPreprocessing 
	 
	^(self 
		newWithTriggerOnStart: 
			[:observer |  
			Transcript 
				cr; 
				cr; 
				cr; 
				show: 
						'SmallDude: ' , Time now printString, 
									' preProcessing text...'; 
				cr] 
		onEnd: 
			[:observer |  
			Transcript 
				show: 
						'SmallDude: worked for ' , observer secondsSinceStart printString , 
									' seconds'; 
				cr] 
		onIncrement: 
			[:observer |  
			Transcript 
				show: 
						observer progress printString , ' out of ' , observer stepCount printString 
								, '; time since last report: ' 
								, observer secondsSinceLastTrigger printString , ' seconds'; 
				cr]) 
		triggerCount: 100; 
		yourself