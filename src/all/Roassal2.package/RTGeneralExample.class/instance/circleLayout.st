layout
circleLayout
	<gtExample>
	"
	self new circleLayout
	"

	| v els |
	v := RTView new.
	els := RTBox new
		size: 10;
		elementsOn: (1 to: 100).
	v addAll: els.
	els @ RTDraggable.
	RTEdgeBuilder new
		view: v;
		objects: (1 to: 100);
		shape:
			(RTLine new
				color: (Color blue alpha: 0.4);
				withVerticallAttachPoint;
				yourself);
		connectFrom: [ :value | value // 2 ] to: #yourself.
	RTCircleLayout new
		initialRadius: 260;
		on: v elements.
	v @ RTDraggableView.
	^ v