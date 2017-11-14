interactions
clickOnElement: e
	| translator |
	translator := RTSmoothLayoutTranslator new.
	translator nbCycles: 1.
	
	(self isElementOpened: e)
		ifTrue: [ self closeElement: e ]
		ifFalse: [ self openElement: e ].
		
	layoutBuilder layout
		translator: translator;
		on: (e view elements select: [ :el | el shape class = self shape shape class ]).
	layoutBuilder layout
		translator: translator;
		on: (e view elements select: [ :el | el shape class = self shape shape class ]).