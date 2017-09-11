sources
exampleHorizontalBasic

| b ds |
b := RTGrapher new.
ds := RTHorizontalData new.
ds barShape color: Color blue trans.

ds points: #( 3 2 -4 9 5.5).
b add: ds.
^ b