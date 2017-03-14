public
text: aBlockOrSymbol
	"
	Set the text of the popup
	The argument, when evaluated with an object return an object, to which #asString is sent to

	The argument receives
		- an object, in case that the popup is defined for RTElement
		- an association (from -> to) in case the popup is added to edges
	
	Here is an example that define a popup on edges
	b := RTMondrian new.
	b shape circle size: 10; color: Color red.
	b nodes: (1 to: 20).
	edges := b edges moveBehind; connectFrom: [ :v | v // 2 ].
	edges @ RTHighlightable.
	edges @ (RTPopup text: [ :association | 'An edge from ', association key asString, ' to ', association value asString ]).
	b layout cluster.
	b
	
	"
	^ self new text: aBlockOrSymbol