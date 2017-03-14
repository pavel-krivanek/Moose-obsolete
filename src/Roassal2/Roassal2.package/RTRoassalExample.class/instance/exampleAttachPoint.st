sources
exampleAttachPoint
|v ellipse box roundedBox e1 e2 e3 l1 l2 l3 ap|
v := RTView new.

ellipse := RTEllipse new
    width: 100;
    height: 50;
    borderColor: Color black.

box := RTBox new
    width: 50;
    height: 100;
    borderColor: Color black.

roundedBox := RTRoundedBox new
	borderRadius: 25;
	borderColor: Color black;
	width: 80;
	height: 50.

e1 := ellipse element.
e2 := box element.
e2 translateBy: 200 @ 0.
e3 := roundedBox element.
e3 translateBy: 40 @ 100.

v add: e1; add: e2; add: e3.

ap := RTBorderAttachPoint new offset: 10.

l1 := RTDoubleArrowedLine new
	headStart: RTFilledNarrowArrow asHead;
	headEnd: RTSimpleArrow asTail;
	attachPoint: ap;
	color: Color black;
	edgeFrom: e1 to: e2.

l2 := RTDoubleArrowedLine new
    headStart: RTFilledNarrowArrow asHead;
    headEnd: RTSimpleArrow asTail;
    attachPoint: ap;
    color: Color magenta;
    edgeFrom: e2 to: e1.
    
l3 := RTStyledMultiLine new
    head: RTEmptyDiamond asTail;
    tail: RTNoDecorationShape asHead;
    attachPoint: ap;
    color: Color magenta muchLighter;
    edgeFrom: e2 to: e3.
    
v add: l1; add: l2; add: l3.
    
v elements @ RTDraggable.
^ v