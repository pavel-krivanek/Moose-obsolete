sources
exampleCodeCommits

| classes dictByJulian dictByDate maxPerDays b |

"Set your classes here:"
classes := RTShape withAllSubclasses.
"classes := (RPackageOrganizer default packageNamed: 'Roassal2') definedClasses."


"Script"
dictByJulian := (classes flatCollect: #methods) groupedBy: [ :m | m date julianDayNumber ].
dictByDate := (classes flatCollect: #methods) groupedBy: [ :m | m date ].
maxPerDays := (dictByJulian values collect: #size) max.

b := RTCalendarBuilder new.
b yearShape composite: [ :comp | 
	comp add: (RTLabel new text: [ :d | d year ]; height: 20 ).
	comp add: (RTBox new color: Color lightGray trans)].
b yearLayout verticalLine.
b dateShape rectangle 
	size: 15; 
	borderColor: Color lightGray;
	color: Color lightGray;
	if: [ :d| dictByJulian includesKey: d julianDayNumber ] color: [ :d| |i|
		i := (dictByJulian at: d julianDayNumber) size / maxPerDays.
		Color r: i g: 0 b: 0 ].
b dateInteraction when: TRMouseClick do: [ :evt | 
	(dictByJulian at: evt element model julianDayNumber ifAbsent: [ #() ]) inspect ].
b dateInteraction popup text: [ :d | 
	(dictByJulian at: d julianDayNumber ifAbsent: [ #() ]) size asString, ' Methods' ].
b dates: (dictByDate keys min to: dictByDate keys max).
^ b
