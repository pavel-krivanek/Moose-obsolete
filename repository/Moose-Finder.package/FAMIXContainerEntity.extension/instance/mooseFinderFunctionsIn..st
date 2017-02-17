*Moose-Finder
mooseFinderFunctionsIn: composite
	<moosePresentationOrder: 40>
	composite list 
		title: 'Functions';
		titleIcon: MooseIcons famixFunctionGroup;
		display: [ self functions ];
		format: [ :each | each mooseName ];
		when: [ self functions notEmpty ]