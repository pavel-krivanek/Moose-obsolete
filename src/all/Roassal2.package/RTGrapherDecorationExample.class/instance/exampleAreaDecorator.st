sources
exampleAreaDecorator
<noTest>
| tab b colors icons deco image elements |
tab := RTTabTable new input: (TRPlatform current 
	downloadContent: 'https://dl.dropboxusercontent.com/s/b9syomd2h0np69s/International.txt?dl=0') 
	usingDelimiter: $,.
b := RTGrapher new.
b extent: 1000 @ 400.

colors := (Array with: '#5e3782' with: '#d49935' with: '#81211d' with: '#238999') 
	collect: [ :c | Color colorFrom: c ].
icons := Array with: RTPolygon diamond with: RTEllipse new 
	with: RTBox new with: RTPolygon star.
icons doWithIndex: [ :ic :i | ic size: 10; color: (colors at: i) ].
	
b addDecorator:(RTHorizontalTickLineDecorator new moveInFront; yourself).
deco := RTContinuousDecorator new.

tab values doWithIndex: [ :ti :i | | year values d |
	year := ti first.
	values := ti allButFirst collect: [ :n | n trim asNumber ].
	d := RTData new.
	d interaction noInteractions.
	d noDot; connectUsing: (RTLine new
		color: (colors at: i);
		width: 2).
	d points: values.
	b add: d.
	deco iconAt: d put: (icons at: i).
	b addDecorator: (RTAreaDecorator new
		points: values;
		color: ((colors at: i) alpha: 0.3)) ].
b axisX
	numberOfTicks: 50;
	numberOfLabels: 50;
	rotateLabels;
	labelConversion: [ :n | 'Day ' , n asInteger asString ].
b axisY
	numberOfTicks: 10;
	numberOfLabels: 10;
	labelConversion: [ :n | '$' , n asInteger asStringWithCommas ].

deco title: [ :x | 'Day: ', x asInteger asString ].
deco legendLabel text: [ :as | | pos year |
	pos := deco calculatePointFor: as key and: as value asInteger.
	year := (tab values at: (b datasets indexOf: as key)) first.
	'The International ', year, ' $', pos y asInteger asStringWithCommas ].
b addDecorator: deco.
b build.

elements := (b view canvas shapes) asGroup.
image := 'https://dl.dropboxusercontent.com/s/v5b7fg4gzb4w4xs/dota.jpeg?dl=0'.
image := (TRPlatform current download: image ) contents.
image := RTBitmap new 
	form: (TRPlatform  current formClass fromBinaryStream: image readStream); 
	element.
b view add: image.
image pushBack.
(RTConstraint on: image background: elements) center; move.

^ b view.