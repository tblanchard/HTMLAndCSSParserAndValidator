Class {
	#name : #HtmlDTDMatchOneOrMore,
	#superclass : #HtmlDTDMatchConstraint,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchOneOrMore >> printOn: aStream [

	expression printOn: aStream.
	aStream nextPut: $+

	
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchOneOrMore >> validateChildren: aStream ofNode: aNode [

	| matchedOne |
	matchedOne := false.
	[expression validateChildren: aStream ofNode: aNode] whileTrue:[matchedOne := true].
	^matchedOne
]
