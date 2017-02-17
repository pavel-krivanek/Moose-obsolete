sources
examplePlatformPoup

| view e |
view := RTView new.
e := RTBox new size: 20; elementOn: 'parangaricutirimicuaro'.
e @ RTDraggable@ (RTPlatformPopup text: [ :t| t, '





is a town in Mexico' ] color: (Color green alpha: 0.5)).
view add: e.
^ view
