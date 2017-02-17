*XML-Parser-GTExtensions
spotterForDirectElementsFor: aStep
	<spotterOrder: 40>
	aStep listProcessor
		title: 'Direct elements';
		allCandidates: [self elements];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true