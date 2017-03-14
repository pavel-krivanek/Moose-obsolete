browse-dynamic
browseOutputOn: aBrowser
	aBrowser text
		title: 'Result';
		display: [ output ];
		act: [:text | output inspect ] entitled: 'Inspect'.

	aBrowser list
		title: 'Debugger';
		format: [ :each | (String new: 2 * each fourth withAll: $ ) asText , each first, ' - ', each last printString ];
		selectionAct: [:list | list selection last inspect ] entitled: 'Inspect token';
		display: [ 
			| depth trace |
			depth := -1.
			trace := OrderedCollection new.
			(self production end transform: [ :each |
				each name notNil 
					ifTrue: [ 
						each >=> [ :s :cc |
							| t r |
							depth := depth + 1. 
							trace addLast: (t := Array with: each name with: s position + 1 with: s position with: depth with: Object new with: nil).
							r := cc value.
							t at: t size put: r.
							t at: 3 put: s position.
							r isPetitFailure
								ifFalse: [ t at: 1 put: (t at: 1) asText allBold ].
							depth := depth - 1.
							r ] ]
					ifFalse: [ each ] ])
				parse: input.
			trace ].
	aBrowser table 
		title: 'Tally';
		column: 'Parser' evaluated: [ :each | each first displayName ];
		column: 'Count' evaluated: [ :each | each second printString ];
		column: 'Percentage (%)' evaluated: [ :each | each third printString ];
		display: [ stream asFrequencyTable ].
	aBrowser table 
		title: 'Profile';
		column: 'Parser' evaluated: [ :each | each first displayName ];
		column: 'Time (ms)' evaluated: [ :each | each second printString ];
		column: 'Percentage (%)' evaluated: [ :each | each third printString ];
		display: [ stream asTimingTable ].
	aBrowser morph 
		title: 'Progress';
		display: [
			| morph |
			morph := ScrollPane new.
			morph color: Color white.
			morph scroller addMorph: stream asPositionMorph.
			morph ]