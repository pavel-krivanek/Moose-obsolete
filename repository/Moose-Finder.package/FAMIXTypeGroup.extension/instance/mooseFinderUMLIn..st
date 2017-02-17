*Moose-Finder
mooseFinderUMLIn: composite
    <moosePresentationOrder: 20>
    composite roassal2
			title: 'UML';
			titleIcon: MooseIcons mooseUml;
			initializeView: [ RTUMLClassBuilder new ];
			painting: [ :view :each | each viewUMLOn: view ]