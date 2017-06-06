private
keywords
	^ keywords
		ifNil:
			[ keywords := #(#break #case #catch #continue #debugger #delete #do #else #finally #for #function #if #in #instanceof #typeof #new #var #return #void #switch #while #this #with #throw #try)
				asSet collect: [ :each | each asString ] ]