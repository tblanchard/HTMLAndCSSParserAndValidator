Class {
	#name : #CSSClassSelector,
	#superclass : #CSSAttributeIncludesSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSClassSelector class >> readFrom: in [

	| out | 
	
	out := WriteStream on: String new.
	in peek = $. ifTrue: [in next].
	[in atEnd not and: [in peek isAlphaNumeric or:['-_' includes: in peek]]] 
		whileTrue: [out nextPut: in next].
	^self new value: out contents unquoted.
]

{ #category : #'as yet unclassified' }
CSSClassSelector >> initialize [

	super initialize.
	self attribute: 'class'
]

{ #category : #'as yet unclassified' }
CSSClassSelector >> matches: aNode [

	^aNode classes includes: self value
]

{ #category : #'as yet unclassified' }
CSSClassSelector >> printOn:aStream [

	aStream nextPut: $..
	aStream nextPutAll: self value.
]
