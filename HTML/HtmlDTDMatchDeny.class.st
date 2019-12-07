Class {
	#name : #HtmlDTDMatchDeny,
	#superclass : #HtmlDTDMatchExpression,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchDeny class >> on: anObject [

	| in | 

	in := anObject isStream 
		ifTrue:[anObject] 
		ifFalse: [ReadStream on: anObject].

	in next = $- ifFalse: [self error: 'HtmlDTDMatchDeny called with invalid stream state'].

	^self new expression: (HtmlDTDMatchExpression on: in).
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchDeny >> allowedElements [

	^#()
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchDeny >> allowsItem: anItem [

	^(self expression allowsItem: anItem) not
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchDeny >> printOn: aStream [

	aStream nextPut: $-.
	expression printOn: aStream.

	
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchDeny >> validateChildren: aStream ofNode: aNode [

	^(expression validateChildren: aStream ofNode: aNode) not
]
