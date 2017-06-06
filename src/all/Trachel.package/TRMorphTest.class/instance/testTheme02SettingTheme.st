theme
testTheme02SettingTheme
	| m c |
	c := TRCanvas new.
	c theme: TRDarkTheme new.
	
	m := TRMorph new.
	m canvas: c.
	self assert: c theme notNil.
	
	"Make sure we do not compute it twice"
	self assert: c theme == c theme.