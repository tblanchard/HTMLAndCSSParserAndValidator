Class {
	#name : #CSSEnumeratedValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSEnumeratedValue class >> readFrom: in [

	| out set |
	set := (Character separators, $;).
	out := WriteStream on: String new.
	[set includes: in peek] whileTrue: [out nextPut: in next].
	^self new valueString: out contents. 
	 

	
]
