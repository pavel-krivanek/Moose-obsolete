*Roassal2GT-Spotter
interestingToHave

"
From Andrei Chis:

spotterPreviewIn: aComposite
	<spotterPreview: 10>
	RTBlink unhighlightElements: self view elements.
	RTBlink highlight: self.
	aComposite addBrickBack: self view setUpCanvas buildMorph

"