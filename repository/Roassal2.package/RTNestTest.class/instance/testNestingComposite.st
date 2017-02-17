tests - nesting
testNestingComposite
	| v element compShape elements ellipses |
	v := RTView new.

	element := RTBox element.
	v add: element.

	compShape := RTCompositeShape new.
	compShape
	  add: (RTBox new
	     color: Color blue;
	     height: 0);
	  add: ((RTEllipse new
	    size: 25;
	    color: Color red));
	  vertical.  
"	compShape := (RTEllipse new
	    size: 25;
	    color: Color red)."
	 elements := compShape elementsOn: (1 to: 2).

	RTNest new for: (Array with: element) add: [ :group :model |
		group addAll: elements.
		RTGridLayout on: group.].
	
	"Testing"
	ellipses := v canvas shapes select: [ :t | t class == TREllipseShape ].
	self assert: ellipses size equals: 2.
	self assert: (ellipses collect: [ :s | s position asIntegerPoint ]) equals: (Array with: (-15@0) with: (15@0)).