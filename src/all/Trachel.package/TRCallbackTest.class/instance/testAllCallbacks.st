tests
testAllCallbacks
	| counter1 callbacks |
	counter1 := 0.
	callbacks := TRCallback allSubclasses collect: #new.
	callbacks do: [ :eachCallback | 
		eachCallback block: [ counter1 := counter1 + 1 ].
		circle1 addCallback: eachCallback ].
	circle1 
		translateTo: 20 @ 30;
		extent: 10 @ 10.
	self assert: counter1 equals: 2.
	"just to check there is no error."