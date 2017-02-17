initialization
= segment
^
((self v1 =~ segment v1) and: [self v2 =~ segment v2]) 
or: 
[(self v1 =~ segment v2) and: [self v2 =~ segment v1]]