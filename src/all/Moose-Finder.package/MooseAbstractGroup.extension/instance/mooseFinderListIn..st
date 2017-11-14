*moose-finder
mooseFinderListIn: composite
	<moosePresentationOrder: 1>
	composite fastList
		beMultiple;
		showOnly: 50;
		display: #mooseInterestingEntity;
		sortBlock: [ :a :b | a mooseDisplayString < b mooseDisplayString ];
		send:
				[ :each | 
			each isNil
				ifTrue: [ nil ]
				ifFalse: [ each size = 1
						ifTrue: [ each first ]
						ifFalse: [ each asMooseGroup ] ] ];
		format: #mooseDisplayString;
		icon: #mooseIcon;
		title: [ :each | each mooseInterestingEntity size asString , ' items' ];
		titleIcon: MooseIcons mooseList;
		when:
				[ :input | 
			(input mooseInterestingEntity isKindOf: MooseGroup)
				or: [ input mooseInterestingEntity isKindOf: Collection ] ];
		dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ];
		updateOn: MooseEntityAdded from: [ :anObject | MooseFinder announcerFor: anObject ];
		updateOn: MooseEntityRemoved from: [ :anObject | MooseFinder announcerFor: anObject ]