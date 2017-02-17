shapes
styledLabel
	<gtExample>
	"
	self new styledLabel
	"

	| v shape el all cls|
	v := RTView new.
	cls := TRPlatform current textEmphasisClass.
	(shape := RTStyledLabel new) color: Color black.
	#(#normal #italic #bold #underlined #struckOut)
		do:
			[ :each | 
			el := shape
				emphasis: (cls perform: each);
				elementOn: each.
			v add: el ].
	all := shape
		emphasis:
			(Array with: cls bold
				with: cls italic
				with: cls underlined);
		elementOn: 'bold + italic + underlined'.
	v add: all.
	RTVerticalLineLayout on: v elements.
	^ v