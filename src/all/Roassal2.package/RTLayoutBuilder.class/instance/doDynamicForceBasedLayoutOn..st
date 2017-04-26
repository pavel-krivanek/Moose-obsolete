building
doDynamicForceBasedLayoutOn: elements
	| v |
	v := elements anyOne view.
	v addAnimation: (RTForceLayoutStepping new view: v)