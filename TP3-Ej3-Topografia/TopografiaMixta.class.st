"
Topografia mixta <<Composite Composite>>
"
Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'componentes'
	],
	#category : #'TP3-Ej3-Topografia-Model'
}

{ #category : #initialization }
TopografiaMixta >> componentes: topografias [
	componentes := topografias
]

{ #category : #'private - accessing' }
TopografiaMixta >> distribucion [
	^ '{ ' , (componentes at: 1) distribucion , ' '
		, (componentes at: 2) distribucion , ' '
		, (componentes at: 3) distribucion , ' '
		, (componentes at: 4) distribucion , ' }'
]

{ #category : #initialization }
TopografiaMixta >> initialize [
	componentes := OrderedCollection ofSize: 4
]

{ #category : #accesing }
TopografiaMixta >> proporcionDeAgua [
	^ (componentes sumNumbers: [ :each | each proporcionDeAgua ]) / 4
]

{ #category : #accesing }
TopografiaMixta >> proporcionDeTierra [
	^ (componentes sumNumbers: [ :each | each proporcionDeTierra ]) / 4
]
