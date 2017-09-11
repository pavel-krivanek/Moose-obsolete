sources
exampleBundleGap

| b v |
v := RTView new.
b := RTBundleBuilder new.
b layout cluster verticalGap: 45.
b view: v.
b explore: Collection using: #subclasses.
b bezier color: (Color colorFrom: '#4682b4').
b useBezierlineWith: #dependentClasses.

^ b