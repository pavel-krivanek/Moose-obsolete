sources
exampleMarkerOnTheXAxis

| b ds |
b := RTGrapher new.

ds := RTData new.
ds connectColor: Color blue.
ds points: #(3 4 5 6 7).
ds x: #yourself.
ds y: #yourself.

b add: ds.
b addDecorator: (RTMarkerOnX new value: 5).
b addDecorator: (RTMarkerOnX new value: 6).

b build.
^ b view