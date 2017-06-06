theme
testTheme01

	| m c originalTheme |
	c := TRCanvas new.
	originalTheme := c theme.
	self assert: originalTheme notNil.
	
	m := TRMorph new.
	m canvas: c.
	self assert: c theme notNil.
	
	"Make sure we do not compute it twice"
	self assert: c theme == c theme.

	self assert: c theme == originalTheme