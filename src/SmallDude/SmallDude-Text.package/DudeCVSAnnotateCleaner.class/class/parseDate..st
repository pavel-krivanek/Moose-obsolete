private
parseDate: aDateString 
	"aDateString is expected to be in the format: DD-MMM-YY 
		where,  
			if YY>=80 then the year is 19YY 
			if YY<80 then the year is 20YY 
	" 
	 
	| day month year spaces dateStr | 
	spaces := ' 	'. 
	dateStr := aDateString. 
	day := (dateStr sliceTo: (dateStr indexOf: $-) - 1) trimCharacters: spaces. 
	dateStr := dateStr sliceFrom: (dateStr indexOf: $-) + 1. 
	month := (dateStr sliceTo: (dateStr indexOf: $-) - 1) trimCharacters: 
			spaces. 
	year := (dateStr sliceFrom: (dateStr indexOf: $-) + 1) trimCharacters: 
			spaces. 
	day := Number 
		readIntegerFrom: (ReadStream on: day) 
		radix: 10. 
	year := Number 
		readIntegerFrom: (ReadStream on: year) 
		radix: 10. 
	year := year < 80 
		ifTrue: [2000 + year] 
		ifFalse: [1900 + year]. 
	^Date newDay: day month: month year: year