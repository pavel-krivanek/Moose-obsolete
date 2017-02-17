A range along the X-Axis is selectable.

-=-=-=-=-=
g := RTGrapher new.
g view: RTView new.
ds := RTData new.
ds points: RTShape withAllSubclasses.
ds y: [ :cls | cls numberOfMethods - 50 ].
ds x: [ :cls | cls numberOfLinesOfCode - 150 ].
g add: ds.

g addDecorator: (RTRangeSelector new callback: [:es | es inspect ]).
"RTGrapherSelectRangeViewContext onGrapher: g."
g 

-=-=-=--=-=