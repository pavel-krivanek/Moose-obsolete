initialize
initializeHD2
	"lattice with horizontal decomposition"
	| data fca |
	data := #(#(#Cat #(#fourlegs #hair)) #(#Dog #(#fourlegs #hair)) #(#Dolphin #(#smart #marine)) #(#Gibbon #(#hair #thumbed)) #(#Man #(#hair #thumbed)) #(#Whale #(#smart #marine)) #(#a #(#b #c))).
	fca := MalFormalContext new.
	^fca with: data using: #first using: #last.