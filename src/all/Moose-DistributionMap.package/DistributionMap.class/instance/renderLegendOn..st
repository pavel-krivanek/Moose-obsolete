rendering
renderLegendOn: view
	| lb |
	lb := RTLegendBuilder new.
	lb view: view.
	self properties do: [ :each | lb addColor: (self propertyColorMap at: each) text: each mooseName ].
	lb build