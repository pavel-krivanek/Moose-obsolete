spec
s_indent
	^ (aligns not, s_space) star, aligns
	==> [ :e | '' ]

"	^ ((nil asParser offsideTo: #YAMLN), s_space ==> #second) star, (nil asParser alignedTo: #YAMLN) 
	
	==> [ :e | '' ]"