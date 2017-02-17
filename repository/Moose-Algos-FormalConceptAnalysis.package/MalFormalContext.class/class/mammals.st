examples
mammals
	"(((		self mammals			)))"
	
	| data names fca |
	data := #(#(#ostrich #(#walks #laysEggs #featheres #warmblooded)) #(#mosquito #(#laysEggs #flies #small)) #(#vulture #(#laysEggs #featheres #warmblooded #flies)) #(#horse #(#walks #warmblooded #suckles)) #(#bat #(#warmblooded #flies #small #suckles)) #(#frog #(#quacks #laysEggs #small)) #(#dove #(#laysEggs #featheres #warmblooded #flies #small)) #(#crocodile #(#walks #laysEggs)) #(#robin #(#laysEggs #featheres #warmblooded #flies #sings #small)) #(#platypus #(#walks #laysEggs #warmblooded #suckles))).
	names := #(#robin #dove #vulture #ostrich #bat #horse #platypus #crocodile #frog #mosquito).
	names := String withAll: (names collect: #first).
	fca := MalFormalContext new.
	fca with: data using: #first using: #last.
	^fca