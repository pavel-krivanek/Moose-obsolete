running
setUp

	| systemVersions versionsAndDates dateTemp ddmmyyyy |

	datePattern := 'dd-mm-yyyy'.
	versionsAndDates := OrderedCollection new.
	dateTemp := '01-01-2000' asDateWithPattern: datePattern.

	1 to: 4000 do: [ :version |
		versionsAndDates add: (version -> dateTemp).
		dateTemp := dateTemp next ].
	
	"See Date>>printOn:format: Ex: version2459#12-03-2004"
	ddmmyyyy := #(1 2 3 $- 1 1 2).
	systemVersions := versionsAndDates collect: [ :each | 'version',each key asString, '#', (each value printFormat: ddmmyyyy) ].

	hismoImporter := MooseHismoImporter new 
		versions: systemVersions; 
		datePattern: datePattern.