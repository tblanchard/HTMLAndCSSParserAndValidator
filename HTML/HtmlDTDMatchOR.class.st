Class {
	#name : #HtmlDTDMatchOR,
	#superclass : #HtmlDTDMatchGroup,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchOR >> isEnumeration [

	^true
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchOR >> separator [

	^'|'
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchOR >> validateChildren: aStream ofNode: aNode [

	| position matched |

	position := aStream position.

	matched := expression detect:
	[:ea | 
		aStream position: position.		
		(ea validateChildren: aStream ofNode: aNode)
	] ifNone: [nil].
	^matched notNil
]
