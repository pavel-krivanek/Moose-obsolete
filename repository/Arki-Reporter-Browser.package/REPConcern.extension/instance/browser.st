*arki-reporter-browser
browser
	| browser |
	browser := GLMTabulator new.
	browser title: #label.
	browser column: #explanation.
	browser transmit to: #explanation; andShow: [:a | 
		a text 
			display: #explanation ].
	^ browser 