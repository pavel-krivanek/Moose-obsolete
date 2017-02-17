tests
testfilterDate

	| importing datePattern date dateString |

	importing := MooseHismoImportingStrategy new.
	
	dateString := '07-09-1985'.
		
	datePattern := 'dd-mm-yyyy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY07-09-1985') =  date.
	self assert: (importing filterDate: 'sytemX07-09-1985versionY') =  date.
	self assert: (importing filterDate: '07-09-1985sytemXversionY') =  date.
	
	datePattern := 'dd-m-yyyy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY07-9-1985') =  date.
	self assert: (importing filterDate: 'sytemX07-9-1985versionY') =  date.
	self assert: (importing filterDate: '07-9-1985sytemXversionY') =  date.
	self assert: (importing filterDate: 'sytemXversionY07-09-1985') =  date.
	self assert: (importing filterDate: 'sytemX107-09-1985versionY') =  date.
	self assert: (importing filterDate: '07-09-1985sytemXversionY') =  date.
	
	datePattern := 'd-mm-yyyy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY7-09-1985') =  date.
	self assert: (importing filterDate: 'sytemX7-09-1985versionY') =  date.
	self assert: (importing filterDate: '7-09-1985sytemXversionY') =  date.
	self assert: (importing filterDate: 'sytemXversionY07-09-1985') =  date.
	self assert: (importing filterDate: 'sytemX107-09-1985versionY') =  date.
	self assert: (importing filterDate: '07-09-1985sytemXversionY') =  date.
	
	datePattern := 'd-m-yyyy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY7-9-1985') =  date.
	self assert: (importing filterDate: 'sytemX7-9-1985versionY') =  date.
	self assert: (importing filterDate: '7-9-1985sytemXversionY') =  date.
	self assert: (importing filterDate: 'sytemXversionY07-09-1985') =  date.
	self assert: (importing filterDate: 'sytemX107-09-1985versionY') =  date.
	self assert: (importing filterDate: '07-09-1985sytemXversionY') =  date.

	dateString := '07-09-85'.

	datePattern := 'dd-mm-yy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY07-09-85') =  date.
	self assert: (importing filterDate: 'sytemX07-09-85versionY') =  date.
	self assert: (importing filterDate: '07-09-85sytemXversionY') =  date.

	datePattern := 'dd-m-yy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY07-9-85') =  date.
	self assert: (importing filterDate: 'sytemX07-9-85versionY') =  date.
	self assert: (importing filterDate: '07-9-85sytemXversionY') =  date.
	self assert: (importing filterDate: 'sytemXversionY07-09-85') =  date.
	self assert: (importing filterDate: 'sytemX107-09-85versionY') =  date.
	self assert: (importing filterDate: '07-09-85sytemXversionY') =  date.
	
	datePattern := 'd-mm-yy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY7-09-85') =  date.
	self assert: (importing filterDate: 'sytemX7-09-85versionY') =  date.
	self assert: (importing filterDate: '7-09-85sytemXversionY') =  date.
	self assert: (importing filterDate: 'sytemXversionY07-09-85') =  date.
	self assert: (importing filterDate: 'sytemX107-09-85versionY') =  date.
	self assert: (importing filterDate: '07-09-85sytemXversionY') =  date.
	
	datePattern := 'd-m-yy'.
	importing datePattern: datePattern.
	date := dateString asDateWithPattern: datePattern.
	self assert: (importing filterDate: 'sytemXversionY7-9-85') =  date.
	self assert: (importing filterDate: 'sytemX7-9-85versionY') =  date.
	self assert: (importing filterDate: '7-9-85sytemXversionY') =  date.
	self assert: (importing filterDate: 'sytemXversionY07-09-85') =  date.
	self assert: (importing filterDate: 'sytemX107-09-85versionY') =  date.
	self assert: (importing filterDate: '07-09-85sytemXversionY') =  date.