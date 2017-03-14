*Moose-Finder
mooseFinderCompleteSourceTextIn: composite
	<moosePresentationOrder: 11>
	composite custom: 
		((MooseFileSourceAnchorViewer startOn: self)
						title: 'Complete source';
						titleIcon: MooseIcons mooseSourceText;
						when: [ :input | input mooseInterestingEntity completeText notEmpty ])