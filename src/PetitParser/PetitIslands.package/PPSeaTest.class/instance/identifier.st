parse support
identifier 
 	^ ((#letter asParser / $# asParser), (#letter asParser / #digit asParser) star) flatten 