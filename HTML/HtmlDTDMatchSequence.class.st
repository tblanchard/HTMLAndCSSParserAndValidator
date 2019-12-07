Class {
	#name : #HtmlDTDMatchSequence,
	#superclass : #HtmlDTDMatchGroup,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchSequence >> separator [

	^','
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchSequence >> validateChildren: aStream ofNode: aNode [

	expression do:
	[:ea | 
		
		(ea validateChildren: aStream ofNode: aNode) ifFalse: [^false]
	].
	^true
]
