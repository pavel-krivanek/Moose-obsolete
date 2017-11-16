Extension { #name : #FAMIXSourceAnchor }

{ #category : #'*moose-finder' }
FAMIXSourceAnchor >> mooseFinderSourceTextIn: composite [
	<moosePresentationOrder: 10>
	composite text
			title: 'Source';
			titleIcon: MooseIcons mooseSourceTextPartial;
			display: [ :each | each mooseInterestingEntity sourceText ];
			when: [ :input | input mooseInterestingEntity sourceText notEmpty ]
]
