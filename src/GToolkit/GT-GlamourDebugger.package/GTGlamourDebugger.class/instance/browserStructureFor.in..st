building
browserStructureFor: aGlmBrowser in: aComposite
	
	aComposite roassal2
		title: 'Browser structure';
		painting: [:view :b | 
			aGlmBrowser viewTreeOn: view ]