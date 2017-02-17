sources
exampleAirports
	<gtExample> 
	<noTest>
	| tab b ask |
	ask := TRPlatform current dialogConfirm: 'This script takes about 1 minutes to execute. Do you want to continue?'.
	ask ifFalse: [ ^ self ].

	tab := RTTabTable new input: (TRPlatform current httpClientRequestClass get:
	'https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat')
	entity contents asString usingDelimiter:$,.
	tab convertColumnsAsFloat: #(7 8).
	b := RTMapLocationBuilder new.
	b shape circle
	size: 1;
	color: (Color red).
	tab values do: [ :row | b addPoint: row seventh @ row eighth value: row second].
	^ b