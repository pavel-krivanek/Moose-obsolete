basic
basic03Animated
	<gtExample>
	"
	self new basic03Animated
	"
	| builder timer |
	timer := TRVITimer new cycleLength: 10.
	
	builder := RTSimon new.
	builder shape current 
						innerRadius: [ :r | 200 atRandom ];
						externalRadius: [ :obj | 200 + 40 atRandom ];
						outerAngle: [ :o | 
							| a b |
							a := 300 atRandom.
							b := 200 atRandom.
							TRVIAnimatedValue new
													evaluator: [ :t | a interpolateTo: (a + b) at: t ];
													timer: timer;
													yourself. ]
							innerAngle: [ :o | 50 atRandom ];
						color: [ :o | ((Array with: Color red with: Color blue with: Color white) atRandom alpha: 0.1)].
	builder models: (1 to: 10).
	timer start.
	builder view addAnimation: (RTResetAllShape new trCanvas: builder view canvas). 
	^ builder