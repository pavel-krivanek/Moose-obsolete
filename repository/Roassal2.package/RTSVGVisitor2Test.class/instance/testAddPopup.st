tests
testAddPopup
	| element background |
	element := RTBox new borderColor: Color black; elementOn: 1.
	element @ (RTPopup new group: [ :group :el |
		el model timesRepeat: [
			group add: (RTBox new size: 10; color: Color blue) element ].
			RTGridLayout on: group.
			background := (RTBox new color: (Color black)) element.
			RTNest new centerOn: background elements: group.
			group add: background. ]).
	visitor addInteractions: element.
	self assert: visitor stream contents equals: 'ints: [new RTPopup([
		{type: "box", id: "0", w: 10, h: 10, color: {r:0,g:0,b:255}, ints: [], matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, 
		{type: "box", id: "1", w: 20, h: 20, color: {r:0,g:0,b:0}, ints: [], matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, ]) ], '