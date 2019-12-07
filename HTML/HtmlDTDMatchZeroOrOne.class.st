Class {
	#name : #HtmlDTDMatchZeroOrOne,
	#superclass : #HtmlDTDMatchConstraint,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchZeroOrOne >> printOn: aStream [

	expression printOn: aStream.
	aStream nextPut: $?

	
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchZeroOrOne >> validateChildren: aStream ofNode: aNode [

	expression validateChildren: aStream ofNode: aNode.
	^true
]
