browse
browseStaticOn: aBrowser
	aBrowser useExplicitNotNil.
	aBrowser tabbedArrangement.
	self browseSourceOn: aBrowser.
	self browseGraphOn: aBrowser.
	self browseCyclesOn: aBrowser.
	self browseFirstOn: aBrowser.
	self browseFollowOn: aBrowser.
	self browseExampleOn: aBrowser