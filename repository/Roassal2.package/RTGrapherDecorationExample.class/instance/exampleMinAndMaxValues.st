sources
exampleMinAndMaxValues

| b ds |
b := RTGrapher new.

ds := RTData new.
ds points: RTShape withAllSubclasses.
ds y: #numberOfMethods.
b add: ds.

b addDecorator: RTVerticalMinValueDecorator new red.
b addDecorator: RTVerticalMaxValueDecorator new blue.

b axisY noLabel.
b build.
^ b view