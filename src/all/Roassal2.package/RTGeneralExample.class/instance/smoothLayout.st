layout
smoothLayout
	<gtExample>
	"
	self new smoothLayout
	"

	| v translator |
	translator := RTSmoothLayoutTranslator new.
	v := RTView new.
	v canvas
		addMenu: 'grid'
		callback:
			[ 
			RTGridLayout new
				translator: translator;
				on: v elements.
			v canvas signalUpdate ].
	v canvas
		addMenu: 'hori'
		callback:
			[ 
			RTHorizontalLineLayout new
				translator: translator;
				on: v elements.
			v canvas signalUpdate ].
	v canvas
		addMenu: 'treeV'
		callback:
			[ 
			RTTreeLayout new
				translator: translator;
				on: v elements edges: v edges.
			v canvas signalUpdate ].
	v canvas
		addMenu: 'treeH'
		callback:
			[ 
			RTHorizontalTreeLayout new
				translator: translator;
				on: v elements edges: v edges.
			v canvas signalUpdate ].
	v canvas
		addMenu: 'cluster'
		callback:
			[ 
			RTClusterLayout new
				translator: translator;
				on: v elements edges: v edges.
			v canvas signalUpdate ].
	v canvas
		addMenu: 'circle'
		callback:
			[ 
			RTCircleLayout new
				translator: translator;
				scaleBy: 0.8;
				on: v elements.
			v canvas signalUpdate ].
	v canvas
		addMenu: 'radial'
		callback:
			[ 
			RTRadialTreeLayout new
				translator: translator;
				on: v elements.
			v canvas signalUpdate ].
	v addAll: (RTBox new elementsOn: (1 to: 100)).
	RTEdgeBuilder new
		view: v;
		objects: (1 to: 100);
		connectFrom: [ :value | value // 2 ] to: #yourself.
	RTTreeLayout new on: v elements edges: v edges.
	^ v