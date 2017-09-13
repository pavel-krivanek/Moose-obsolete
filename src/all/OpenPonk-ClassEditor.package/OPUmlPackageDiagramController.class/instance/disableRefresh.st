userinterface
disableRefresh
	| install |
	install := [ :cls | 
	| link |
	(cls includesSelector: #refreshFigure)
		ifTrue:
			[ link := MetaLink new
				metaObject: self;
				selector: #yourself;
				arguments: #();
				control: #instead.
			(cls >> #refreshFigure) ast link: link ] ].
	OPUmlElementController withAllSubAndSuperclassesDo: [ :each | install value: each ]