*Moose-Finder
spotter: aStringTitle on: aCandidatesBlock for: aStep
	aCandidatesBlock value isEmpty ifTrue: [ ^ self ].
	^ aStep listProcessor
		title: aStringTitle;
		candidatesLimit: 5;
		allCandidates: aCandidatesBlock;
		itemName: [ :each | each mooseName ];
		itemIcon: [ :each | each mooseIcon ];
		actLogic: [ :each :step |
			step exit.
			each openInMoose ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true