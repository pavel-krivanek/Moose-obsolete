initialize
initializeDataMammals
	| data fca |
	data := #(#(#Cat #(#fourlegs #hair)) #(#Dog #(#fourlegs #hair)) #(#Dolphin #(#smart #marine)) #(#Gibbon #(#hair #smart #thumbed)) #(#Man #(#smart #thumbed)) #(#Whale #(#smart #marine))).
	fca := MalFormalContext new.
	^fca with: data using: #first using: #last.