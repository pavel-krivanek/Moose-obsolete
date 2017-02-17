sources
examplePrimeNumberSpace
	<noTest>
	| diag v ds anim |
	"Made by Serge Serge Stinckwich <serge.stinckwich@gmail.com>"
	v := RTView new.

	diag := RTGrapher new.
	diag view: v.
	ds := RTData new.
	ds dotShape ellipse color: (Color r: 0.9450000000000001 g: 0.768 b: 0.059000000000000004 alpha: 1.0); size: 0.1.
	ds points: ((0 to: 5e5) select:#isPrime);
	   y: [ :p |(p* (p cos))];
	   x: [ :p |(p* (p sin))].

	diag add: ds.
	diag axisX color: (Color black alpha:0); noTick; noLabel.
	diag axisY color: (Color black alpha:0); noTick; noLabel.
	diag build.

	anim := RTActiveAnimation new.
	anim intervalInMilliseconds: 100.
	anim blockToExecute: [ 
	    v canvas camera scale: v canvas camera scale + 0.2.
	    v signalUpdate.
	].
	anim inView: v.

	v canvas color: Color black.
	^ v