removing
remove
	(self allShowableElementsInModel: self model)
		do: [ :each | 
			diagramController controllers
				detect: [ :ctrl | ctrl model = each ]
				ifFound: [ :ctrl | ctrl remove ] ].
	super remove