building
buildBrowser
	browser := GLMTabulator new.
	browser title: 'Moose Panel'.
	browser column: #models; column: #details span: 6.
	self browserActionsIn: browser.
	browser transmit to: #models; andShow: [ :a | self modelsIn: a ].
	browser transmit to: #details; from: #models; andShowIfNone: [ :a |
		a custom: (MooseAccumulatingFinder new first noTitle) ].
	browser transmit 
		to: #details port: #entityToSelect;
		from: #models.
	browser transmit 
		from: #details port: #activeEntity;
		to: #models port: #selection.
	^ browser 