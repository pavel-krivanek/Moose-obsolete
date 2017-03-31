public
trachelShapeFor: anEdge
	| multiShape path |
	path := self pathFor: anEdge.
	multiShape := TRCompositeShape new.
	2 to: path size do: [ :i | 
		multiShape
			addShape:
				(TRStyledLineShape new
					dashes: dashes;
					capStyle: capStyle;
					width: (self widthFor: anEdge);
					from: (path at: i - 1) to: (path at: i);
					color: (self colorFor: anEdge)) ].
	multiShape
		addShape: (head trachelShapeFor: anEdge from: path allButLast last);
		addShape: (tail trachelShapeFor: anEdge from: path second).
	^ multiShape