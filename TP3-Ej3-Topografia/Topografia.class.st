"
Topografia representa la distribucion de agua y tierra de una region cuadrada, la cual esta formada por porciones de “agua” y de “tierra”.
Las proporciones siempre estan entre 0 y 1.
<<Component Composite>>
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Ej3-Topografia-Model'
}

{ #category : #'instance creation' }
Topografia class >> agua [
	^ TopografiaSimple new proporcionDeAgua: 1
]

{ #category : #'instance creation' }
Topografia class >> mixtaCon: coleccionDeTopografias [
	^ TopografiaMixta new initialize: coleccionDeTopografias
]

{ #category : #'instance creation' }
Topografia class >> tierra [
	^ TopografiaSimple new proporcionDeAgua: 0
]

{ #category : #comparing }
Topografia >> = aTopografia [
	^ self proporcionDeAgua = aTopografia proporcionDeAgua
		& (self proporcionDeTierra = aTopografia proporcionDeTierra)
		& (self distribucion = aTopografia distribucion)
]

{ #category : #'private - accessing' }
Topografia >> distribucion [
	"Devuelve una representacion en String del receptor que es unica dependiendo de la estructura del receptor."

	^ self subclassResponsibility
]

{ #category : #accesing }
Topografia >> proporcionDeAgua [
	^ self subclassResponsibility
]

{ #category : #accesing }
Topografia >> proporcionDeTierra [
	^ self subclassResponsibility
]
