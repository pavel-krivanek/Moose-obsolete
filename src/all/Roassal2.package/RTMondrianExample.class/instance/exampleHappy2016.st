sources
exampleHappy2016

| values b ff |
values := #(61 91 31 2 3 4 5 36 66 96 125 154 183 212 241 241 271 272 273 274 275 276 249 219 189 159 129 99 69 69 39 10 11 12 13 44 74 104 134 164 164 194 194 224 254 283 282 281 280 166 137 108 79 50 21 22 52 82 112 142 172 202 232 262 292 120 90 59 58 57 56 55 84 114 144 174 204 234 264 295 296 297 298 299 270 240 210 209 208 207 206 205 ).

b := RTMondrian new.

b shape ellipse size: 20;
	fillColor: (Color white alpha: 0);
	if: [ :value | values includes: value ]  fillColor: Color red.
b nodes: (1 to: 300).
"b shape line color: Color white."
b edges 
	moveBehind;
	connectToAll: [ :value | 
	(value \\ 30 = 0) 
		ifTrue: [ Array with: (value + 30) ]
		ifFalse: [ Array with: (value + 1) with: (value + 30) ]
	 ].
b layout grid lineItemsCount: 30.
b build.

ff := RTForceBasedLayout new.
ff initialLayout: (RTGridLayout new lineItemsCount: 30).
RTForceLayoutStepping new 
	view: b view; 
	layout: ff;
	inView: b view.
^ b view 