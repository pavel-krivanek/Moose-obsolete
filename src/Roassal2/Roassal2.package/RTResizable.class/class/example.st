example
example
	| v g el edge |
	v := RTView new.
	g := RTGroup new
		add: (RTBox new
			size: 100;
			borderColor: Color black;
			borderWidth: 1;
			element);
		add: (RTRoundedBox new
			size: 50;
			borderRadius: 20;
			borderColor: Color black;
			borderWidth: 1;
			element);
		add: (RTEllipse new
			width: 100;
			height: 30;
			borderColor: Color black;
			element);
		yourself.

	el := RTBox new
		size: 50;
		color: Color black;
		element.

	edge := RTLine new
		color: Color black;
		attachPoint: RTBorderAttachPoint new;
		edgeFrom: g first to: el.

	v addAll: g.
	v
		add: el;
		add: edge.

	"add empty event to prevent event propagation to the view (and thus test event overseer)"
	el when: TRMouseLeftClick do: [ :evt |  ].
	edge when: TRMouseLeftClick do: [ :evt |  ].

	RTGridLayout new
		gapSize: 50;
		on: v elements.

	v elements @ RTDraggable.
	g @ RTResizable.

	v @ RTZoomableView.

	^ v