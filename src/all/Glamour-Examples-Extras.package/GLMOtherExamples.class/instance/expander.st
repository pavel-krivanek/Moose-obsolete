other examples
expander
	"self new expander openOn: Collection withAllSubclasses"
	| browser expander |
	browser := GLMTabulator new.
	browser title: 'Example'.
	expander := GLMExpander new.
	expander title: 'Methods'.
	expander display: [:class | class methods ].
	expander show: [ :a | 
		a title: [:x | x selector ].
		a text 
			display: #getSource].
	browser column: #classes; column: #methods.
	browser transmit to: #classes; andShow: [:a | 
		a list title: 'Classes' ].
	browser transmit to: #methods; from: #classes; andShow: [:a | 
		a custom: expander ].
	^ browser
