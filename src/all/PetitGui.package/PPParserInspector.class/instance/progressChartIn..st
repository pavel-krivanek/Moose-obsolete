private building
progressChartIn: composite
	composite morph 
		title: 'Progress';
		display: [ :stream |
			| morph |
			morph := ScrollPane new.
			morph color: Color white.
			morph scroller addMorph: stream asPositionMorph.
			morph ]