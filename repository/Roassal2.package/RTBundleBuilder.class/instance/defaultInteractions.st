default
defaultInteractions
	self interaction popup;
		addInteraction: (RTHighlightable new 
			highlightedColor: (Color r: 0 g: 120 b: 0 range: 255);
			highlightElements: [ :el |
				edges := el view edges select: [:e | e model key = el model ].
				edges, (edges flatCollect: [:ed |
					el view elements select: [ :elem | elem model = ed to model ] ] ).
			 ]);
		addInteraction: (RTHighlightable new
			highlightedColor: Color red;
			highlightElements: [:el | 
				edges := el view edges select: [:e | e model value = el model].
				edges, (edges flatCollect: [:ed |
					el view elements select: [ :elem | elem model = ed from model ] ] ).
				]);
		addInteraction: RTHighlightable allSibblings.
	