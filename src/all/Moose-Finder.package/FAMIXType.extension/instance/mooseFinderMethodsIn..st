*Moose-Finder
mooseFinderMethodsIn: composite
	<moosePresentationOrder: 20>
	composite table
			title: 'Methods';
			titleIcon: MooseIcons famixMethodGroup;
			display: [ self methods ];
			column: 'Name' evaluated: #signature;
			column: 'Declared type' evaluated: [ :each | each declaredType mooseDisplayString ];
			when: [ self methods notEmpty ];
			selectionPopulate: #selection  
				entitled: 'Open declared type' 
				with:  [ :table | table selection declaredType ]