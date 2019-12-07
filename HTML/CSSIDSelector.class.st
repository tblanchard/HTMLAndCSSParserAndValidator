Class {
	#name : #CSSIDSelector,
	#superclass : #CSSAttributeEqualsSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSIDSelector class >> readFrom: in [

	| out | 
	
	out := WriteStream on: String new.
	in peek = $# ifTrue: [in next].
	[in atEnd not and:[in peek isAlphaNumeric or:['-_' includes: in peek]]] 
		whileTrue: [out nextPut: in next].
	^self new value: out contents.
]

{ #category : #'as yet unclassified' }
CSSIDSelector >> initialize [

	super initialize.
	self attribute: 'id'
]

{ #category : #'as yet unclassified' }
CSSIDSelector >> printOn:aStream [

	aStream nextPut: $#.
	aStream nextPutAll: self value.
]
