*Moose-Finder
mooseFinderPropertiesIn: composite
	<moosePresentationOrder: 2>
	composite table
		noSelection;
		title: 'Properties';
		titleIcon: MooseIcons mooseProperties;
		display: [ :anObject | anObject mooseInterestingEntity mooseDescription allPrimitiveAttributes ];
		sorted: [:x :y | x name < y name];
		column: 'Properties' evaluated: [:each | each name ];
		column: 'Value' evaluated: [:each :anObject | [(anObject mooseInterestingEntity mmGetProperty: each) asString] on: Error do: ['error'] ];
		when: [ :anObject | 
			(anObject mooseInterestingEntity isKindOf: MooseEntity) and: [
				anObject mooseInterestingEntity mooseDescription notNil and: [anObject mooseInterestingEntity mooseDescription allPrimitiveAttributes notEmpty] ]].