*moose-finder
gtExampleGroupWithEmptyEntities
	<gtExample>
	<label: 'Group with empty entities'>
	
	^ self new
		add: MooseEntity new;
		add: MooseEntity new;
		add: MooseEntity new;
		yourself