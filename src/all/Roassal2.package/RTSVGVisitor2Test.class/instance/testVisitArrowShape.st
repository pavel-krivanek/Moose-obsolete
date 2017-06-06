tests
testVisitArrowShape
	| shape box e1 e2 view |
	view := RTView new.
	box := RTBox new.
	e1 := box element.
	e2 := box element.
	shape := RTArrowedLine edgeFrom: e1 to: e2.
	view add: e1; add: e2; add: shape.
	view canvas color: Color white.
	visitor visitView: view.
	self assert: visitor stream contents equals:'mamani.color({r:255,g:255,b:255});
	mamani.camera.setScale(1.0001);
	var shapes = [
		{type: "box", id: "0", w: 5, h: 5, color: {r:223,g:223,b:223}, ints: [], matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, 
		{type: "box", id: "1", w: 5, h: 5, color: {r:223,g:223,b:223}, ints: [], matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, 
		{id: "2", type:"multi", shapes:[
		{type: "line", id: "3",fromid:''0'',toid:''1'',color: {r:223,g:223,b:223},  width: 1,ap: new RTCenteredAttachPoint(false)},
		{type: "simplearrow", id: "4", fromid: ''0'', toid: ''1'',color: {r:223,g:223,b:223},  width: 1, size: 10,ap: new RTCenteredAttachPoint(false), base: 10},], offsets: [{x: 0, y: 0},{x: 0, y: 0},]},
	];
	mamani.addShapes(shapes);
'