# Introducción a Machine Learning

Este man habla mucho y en un segundo uno se va para la luna!!!

Algunas aplicaciones del ML:
- Bayes rule from probability
- Least squares regression from astronomy
- First-order logic from logic
- Maximum likelihood from statistics
- Artificial neural networks from neuro-science
- Minimax games from economics
- Stochastic gradient descent from optimización
- Uniform cost search from algorithms
- Value iteration from control theory

## Aprendizaje supervizado

- Enseñamos a la compu
- Usamos información (datasets) para enseñarle

## Algoritmos de clasificación
- Asignamos clases (un número finito, ej: 4 patas en vez 2757000 pelos)
- Separamos en el número de clases que tenemos

El algoritmmo de Naive Bayes:

Text | Tag
--- | ---
A great game | Sports
The election was over | Not sports
Very clean match | Sports
A clean election | Not sports

<button style="color:blue;padding:0.5rem 1rem;border-radius:10px;border:none" onclick="alert('hola')">Click me</button>

### Clasificación
Por qué entrenar si con tres líneas de código se puede resolver. Ejemplo de los puntos que se resuelve:
  >Si está a la izquierda de la primera línea, no;  
  Si está abajo de la segunda línea, no;  
  sino, sí.


### Análisis de sentimientos

Puedo contar las palabras, quitar las stop words, pasar la lista de las palabras buenas y las palabras que malas. Hasta ahí, bien. Pero también tendría que relacionar los contextos, lo cual es prácticamente imposible.

Es el mismo ejemplo del Spam, se puede entrenar manualmente, pero no se tendría 