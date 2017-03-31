animations
expandingArc
	<gtExample>
	"
	self new expandingArc
	"

	| v e angle externalRadius |
	v := RTView new.
	angle := TRVIAnimatedValue new
					evaluator: [ :t | 0 interpolateTo: 360 at: t ];
					timer: (TRVITimer new cycleLength: 4);
					yourself.
	externalRadius := TRVIAnimatedValue new
					evaluator: [ :t | 50 interpolateTo: 150 at: t ];
					timer: (TRVITimer new cycleLength: 4);
					yourself.
					
	e := (RTArc new 
			innerRadius: 50;
			externalRadius: externalRadius;
			outerAngle: angle innerAngle: 30) element.
	v add: e.
	v addAnimation: (RTResetAllShape new trCanvas: v canvas).
	angle start.
	externalRadius start.
	^ v