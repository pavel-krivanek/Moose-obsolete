sources
exampleSimple

| b |
b := RTPieBuilder new.
b interaction popup.

b objects: #(10 4 1 2 5).
b slice: [ :aNumber | aNumber ].
b normalizer distinctColor.
b labeled.
b build.
^ b view