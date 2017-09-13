figures
showAllElements
	self disableRefresh.
	(self allShowableElementsInModel: model) do: [ :each | self showModelInDiagram: each ].
	self enableRefresh