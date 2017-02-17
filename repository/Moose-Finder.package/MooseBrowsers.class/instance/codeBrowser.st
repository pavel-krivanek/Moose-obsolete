famix
codeBrowser
	| browser |
	browser := GLMTabulator new.
	browser title: 'Moose Code Browser'.
	browser row: #navigation; row: #details.
	browser transmit to: #navigation; andShow: [ :a |
		a custom: MooseCodeNavigator new browser ].
	browser transmit to: #details; from: #navigation port: #class; from: #navigation port: #method; andShow: [ :a |
		a text
			title: 'Source';
			display: [:cls | cls formattedSourceText];
			useExplicitNotNil;
			when: [:cls :method | cls notNil and: [method isNil] ].
		a text
			title: 'Source';
			display: [:cls :method | method formattedSourceText]	  ].
	browser transmit toOutsidePort: #namespace; from: #navigation port: #namespace.
	browser transmit toOutsidePort: #class; from: #navigation port: #class.
	browser transmit toOutsidePort: #method; from: #navigation port: #method.
	browser transmit to: #navigation port: #namespaceToSelect; fromOutsidePort: #namespaceToSelect.
	browser transmit to: #navigation port: #classToSelect; fromOutsidePort: #classToSelect.
	browser transmit to: #navigation port: #methodToSelect; fromOutsidePort: #methodToSelect.
	^ browser