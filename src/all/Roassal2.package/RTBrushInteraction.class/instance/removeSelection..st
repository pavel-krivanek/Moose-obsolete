removing
removeSelection: aGroup
	aGroup do: [:e | RTBlink unhighlight: e ].
