"
I am a base class for CSS parse nodes.
"
Class {
	#name : #CSSElement,
	#superclass : #HtmlParseNode,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSElement >> isAtImportRule [

	^false
]

{ #category : #'as yet unclassified' }
CSSElement >> isCSS [

	^true
]

{ #category : #'as yet unclassified' }
CSSElement >> isProperty [

	^false
]

{ #category : #'as yet unclassified' }
CSSElement >> isStyleRule [

	^false
]

{ #category : #'as yet unclassified' }
CSSElement >> tag [
	^'css'
]

{ #category : #'as yet unclassified' }
CSSElement >> validateAgainstDTD: aDTD [
]
