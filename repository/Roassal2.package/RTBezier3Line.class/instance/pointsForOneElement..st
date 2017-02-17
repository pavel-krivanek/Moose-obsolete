private
pointsForOneElement: edge
	| cp1 cp3 e w h |
	e := edge to encompassingRectangle.
	w := e width/2.
	h := e height/2.
	cp1 := e rightCenter.
	cp3 := e topCenter.
	^ OrderedCollection new 
		add:cp1;
		add: cp1 + (w @0);
		add: (cp1 x + w)@cp3 y;
		add: (cp1 x + w)@(cp3 y - h);
		add: (cp1 x)@(cp3 y - h);
		add: (cp1 x-w)@(cp3 y - h);
		add: cp3;
		yourself.
		
	