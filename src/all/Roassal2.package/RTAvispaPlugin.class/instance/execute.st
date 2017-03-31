hooks
execute
	"Make sure the problem with the font is solved."
	RTFixFontProblemPlugin new execute.
	
	"Load Avispa"
	Gofer new
		smalltalkhubUser: 'abergel' project: 'Avispa';
		package: 'ProcessModel';
		load.
