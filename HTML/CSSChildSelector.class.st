Class {
	#name : #CSSChildSelector,
	#superclass : #CSSRelationshipSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSChildSelector class >> operator [

	^'>'
]

{ #category : #testing }
CSSChildSelector >> isChildSelector [

	^true
]

{ #category : #testing }
CSSChildSelector >> matches: aNode [

	| node |

	node := aNode.
	selectors reverseDo:[:ea | (ea matches: node) ifFalse:[^false]. node := node parent].
	^true
]
