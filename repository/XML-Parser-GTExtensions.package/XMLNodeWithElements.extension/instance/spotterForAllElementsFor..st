*XML-Parser-GTExtensions
spotterForAllElementsFor: aStep
	<spotterOrder: 40>
	aStep listProcessor
		title: 'All elements';
		allCandidates: [self allElements];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true