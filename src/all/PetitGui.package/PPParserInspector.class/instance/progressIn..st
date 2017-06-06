private building
progressIn: composite
	composite morph 
		title: 'Progress';
		display: [:result :sample :stream :parser  | 
			| morph |
			morph := ScrollPane new.
			morph color: UITheme current backgroundColor.
			morph scroller addMorph: stream asPositionMorph.
			morph ]