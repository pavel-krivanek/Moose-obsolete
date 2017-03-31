accessing
condition: aBlock named: aString

	"User should use this method to specify a one argument block (pointing on the outputValues dictionary of the wizard), to specify a boolean condition that should return true to enable the next/finish button "
	self conditions at: aString put: aBlock