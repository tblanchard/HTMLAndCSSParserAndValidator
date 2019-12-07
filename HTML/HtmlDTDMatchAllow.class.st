Class {
	#name : #HtmlDTDMatchAllow,
	#superclass : #HtmlDTDMatchExpression,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchAllow class >> on: anObject [

	| in | 

	in := anObject isStream 
		ifTrue:[anObject] 
		ifFalse: [ReadStream on: anObject].

	in next = $+ ifFalse: [self error: 'HtmlDTDMatchDeny called with invalid stream state'].

	^self new expression: (HtmlDTDMatchExpression on: in).
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchAllow >> allowedElements [

	^expression allowedElements
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchAllow >> allowsItem: anItem [

	^self expression allowsItem: anItem
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchAllow >> printOn: aStream [

	aStream nextPut: $+.
	expression printOn: aStream.


]

{ #category : #'as yet unclassified' }
HtmlDTDMatchAllow >> validateChildren: aStream ofNode: aNode [

	^expression validateChildren: aStream ofNode: aNode
]
