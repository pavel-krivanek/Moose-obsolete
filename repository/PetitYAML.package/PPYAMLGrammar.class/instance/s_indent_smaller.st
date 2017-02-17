spec
s_indent_smaller
	^ (aligns not, s_space) star
	==> [ :e | '' ]

"	^ (s_space, nil asParser offsideTo: #YAMLN) star
	
	==> [ :e | '' ]"