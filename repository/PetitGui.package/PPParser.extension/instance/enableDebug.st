*petitgui-debug
enableDebug
   | root newParser  |
	root := PPParserDebuggerResult new.
	
	"In order to debug island waters, we need to compute the island water..."
	self allParsers select: [ :p | p isKindOf: PPSea  ] thenDo: [ :island |
		island createWaterForRoot: self	
	].
	
	newParser := self transform: [:each |
		each >=> [:stream :continuation | 
			| result child |
			child := PPParserDebuggerResult new 
					parser: each;
					parent: root.
			root := root children add: child.
 			child start: stream position + 1.
			result := continuation value.
			child end: stream position.
			root result: result.
			root := root parent.
			result 
		]
	].
	
	^ PPDebugParser on: newParser root: root.
