initialize-release
initialize 
	"Initialize a newly created instance. This method must answer the receiver." 
	 
	super initialize.	" *** Edit the following to properly initialize instance variables ***" 
	sStartComment := '/*'. 
	sEndComment := '*/'. 
	sLineComments := '//'.	"This is used to eliminate strings like: 'some code "	"some string // some other string"	" some other code'" 
	sRegex := '".*[^//]"'.	" *** And replace this comment with additional initialization code *** " 
	^self