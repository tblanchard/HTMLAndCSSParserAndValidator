Class {
	#name : #HtmlDTDMatchZeroOrMore,
	#superclass : #HtmlDTDMatchConstraint,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchZeroOrMore >> printOn: aStream [

	expression printOn: aStream.
	aStream nextPut: $*

	
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchZeroOrMore >> validateChildren: aStream ofNode: aNode [

	[expression validateChildren: aStream ofNode: aNode] whileTrue:[].
	^true
]
