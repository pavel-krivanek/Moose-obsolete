*PetitGui
spotterForProductionsFor: aStep
	<spotterOrder: 10>
	
	aStep listProcessor
		title: 'Productions';
		allCandidates: [ (self productionNames collect: #value) asOrderedCollection ];
		candidatesLimit: 5;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true