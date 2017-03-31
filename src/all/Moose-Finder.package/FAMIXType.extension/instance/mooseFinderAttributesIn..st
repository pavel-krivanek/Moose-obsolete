*Moose-Finder
mooseFinderAttributesIn: composite
	<moosePresentationOrder: 20>
	composite table
			title: 'Attributes';
			titleIcon: MooseIcons famixAttributeGroup;
			display: [ self attributes ];
			column: 'Name' evaluated: #name;
			column: 'Declared type' evaluated: [ :each | each declaredType mooseDisplayString ];
			column: 'Modifiers' evaluated: [ '' ] tags: #modifiers;
			when: [ self attributes notEmpty ];
			selectionPopulate: #selection  
				entitled: 'Open declared type' 
				with:  [ :table | table selection declaredType ]