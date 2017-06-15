sources
exampleObjectBrowser

| b v |
b := RTObjectBrowser new.
v := RTView new.
v addElement: RTBox element.
b object: v.
^ b