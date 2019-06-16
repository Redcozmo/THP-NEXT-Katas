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

Je veux une app rails qui me calcule les 5 statios de velib le plus proche du bureau de THP et le nombre de vélo disponible.

API Url: http://api.citybik.es/v2/

Une attention particulière sera portée au tests et au fait de ne pas bouriner l'API a chaque request.
Le système doit être quasi instantanné la plupart du temps.

- **bonus**: Je veux un bouton refresh qui raffraichi les données sans recharger la page.
- **extra bonus**: Je voudrais pouvoir spécifier l'addresse de départ.
