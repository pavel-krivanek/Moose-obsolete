examples
mammals4
	"all objects possessing a particular attribute"
	"(((		self mammals2			)))"
	
	| data fca |
	data := #(#(#Cat #(#fourlegs #hair)) #(#Dog #(#fourlegs #hair #hair)) #(#Dolphin #(#smart #marine #hair)) #(#Gibbon #(#hair #smart #thumbed #hair)) #(#Man #(#smart #thumbed #hair)) #(#Whale #(#smart #marine #hair))).
	fca := MalFormalContext new.
	fca with: data using: #first using: #last.
	^fca