# THP-NEXT-Katas
Katas and exercices by Denis Pasin ZARATAN during THP-NEXT training programme

# Algo

Dans le langage de ton choix:

## Problème 1
Écrire 3 fonctions qui calculent la somme des nombres dans une liste utilisant 3 façons différentes 
(`while`, `each`, `recursion` en ruby)

## Problème 2
Écrire une fonction qui combine deux listes en une seule en alternant les éléments.

Par exemple, `combine([:a, :b, :c], [1, 2, 3])` doit renvoyer `[:a, 1, :b, 2, :c, 3]`.

## Problème 3
Écrire une fonction qui calcule les 100 premiers nombres de Fibonacci.
Fibonacci commence avec `0` et `1` et chaque nombre suivant est calculé comme étant la somme des deux précédents.

Le début de la liste sera donc: `[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, …]`.

## Problème 4
Écrire une fonction qui prend en argument une liste de nombres non-négatifs puis les arrange de façon a faire le plus grand nombre possible.

Par exemple: `big([50, 2, 1, 9])` doit donner: `95021`

Pro-tip: `[3, 34, 302, 50, 31]` est un meilleur test que celui ci-dessus.


## Problème 5
Écrire une fonction qui affiche toutes les possibilités de faire 100 avec les nombres 1 2 3 4 5 6 7 8 9 **dans cet ordre** 
en mettant entre eux seulement des `-`, `+` ou en collant les nombres.

Par exemple: `1 + 2 + 34 – 5 + 67 – 8 + 9` (= 100)

# Api

Je veux une app rails qui me calcule les 5 stations de velib les plus proches du bureau de THP et le nombre de vélos disponibles.

API Url: http://api.citybik.es/v2/

Une attention particulière sera portée aux tests et au fait de ne pas bouriner l'API à chaque request.
Le système doit être quasi instantanné la plupart du temps.

- **bonus**: Je veux un bouton refresh qui raffraichi les données sans recharger la page.
- **extra bonus**: Je voudrais pouvoir spécifier l'addresse de départ.

# Projet Esoterique

Hop ! Cet exo cherche à voir comment tu te débrouilles avec des langages que tu ne connais pas.

En [OCaml](https://ocaml.org) je cherche à faire un programme simple.

Je cherche à créer un simulateur de liste chaînée (https://fr.wikipedia.org/wiki/Liste_cha%C3%AEn%C3%A9e).

Je veux donc les fonctions:

1) `init()` qui retourne une liste vide
2) `add(e)` qui retourne la liste avec l'élément ajouté **au début** de la liste
3) `remove(e)` qui parcours toute la liste et retourne la liste sans l'élément e (si il est là plusieurs fois il faut l'enlever plusieurs fois)
4) **bonus** `sort()` trie la liste (**extra-bonus** faire ça en O(n.ln(n)))

**IMPORTANT** Tout ceci doit être fait sans utiliser une seule boucle (`while` et `for` sont strictement interdits). 
Les reccursions sont donc obligatoires.
