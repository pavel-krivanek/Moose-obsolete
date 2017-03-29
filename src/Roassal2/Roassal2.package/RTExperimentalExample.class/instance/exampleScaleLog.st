sources
exampleScaleLog
 
| g s extent x y superscript |

extent := 500@300.
superscript := '⁰¹²³⁴⁵⁶⁷⁸⁹'.
g :=  RTGrapher new.
g extent: extent.
x := RTScale linear
	domain: #(0 100);
	range: (Array with: 0 with: extent x).
	
y := RTScale log
	base: Float e;
	domain: (#(0 9) collect: #exp);
	range: (Array with: 0 with: extent y).
s := RTData new.
s points: (0 to: 100).
s x: [ :n | n ].
s y: [ :n | y scale: ((n * n)) ].
s interaction popup text: [ :n| 
	'Number: ',n asString,'
Value: ', (y scale: (n*n)) asString ].
g add: s.
g axisX numberOfTicks: 10.
g axisY 
	numberOfTicks: 10;
	labelConversion: [:n | | v | 

		v:= (y invert: n) ln + 1.
		v := v isInfinite 
			ifTrue: [ 1 ]
			ifFalse: [ v rounded ].
		v > 10 ifTrue: [ v := 10 ].
		'e', (superscript at: v) asString ].
	
g build.
^ g view.