*petitgui-debug
progressIn: composite
	<gtInspectorPresentationOrder: 30>
	composite morph 
		title: 'Progress';
		display: [:result :sample :stream :parser  | 
			| morph |
			morph := ScrollPane new.
			morph color: Color white.
			morph scroller addMorph: self asPositionMorph.
			morph ]