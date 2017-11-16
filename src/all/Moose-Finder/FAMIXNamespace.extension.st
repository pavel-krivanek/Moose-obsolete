Extension { #name : #FAMIXNamespace }

{ #category : #'*moose-finder' }
FAMIXNamespace >> browseSource [
	<menuItem: 'Source' category: 'Browse'>
	| browser |
	self mooseModel isSmalltalk 
		ifTrue: [ (Smalltalk at: self name) browse ]
	ifFalse: [ 
		browser := MooseNamespacesCodeBrowser new browser.
		browser openOn: (self mooseModel allNamespaces select: #isRoot).
		(browser pane port: #focusOnNamespace) value: self ]
]

{ #category : #'*moose-finder' }
FAMIXNamespace >> mooseFinderWithinHierarchyIn: composite [
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Within overall hierarchy';
			titleIcon: MooseIcons mooseCluster;
			initializeView: [ RTMondrian new ];
			painting: [ :view |
				self withAllChildScopes asMooseGroup viewWithinOverallHierarchyOn: view ]
]

{ #category : #'*moose-finder' }
FAMIXNamespace >> mooseIcon [ 
	^ MooseIcons famixNamespace
]
