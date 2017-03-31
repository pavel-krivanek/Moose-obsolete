examples
mammals3
	"(((		self mammals2			)))"
	
	| data fca |
	data := #(#(#Cat #(#fourlegs #hair)) #(#Dog #(#fourlegs #hair)) #(#Dolphin #(#smart #marine)) #(#Gibbon #(#hair #smart #thumbed)) #(#Man #(#smart #thumbed)) #(#Whale #(#smart #marine)) #(#SuperMan #(#hair #smart #thumbed #marine #fourlegs))).
	fca := MalFormalContext new.
	fca with: data using: #first using: #last.
	^fca