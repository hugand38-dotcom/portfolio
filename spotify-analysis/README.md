Analyse du Top 100 Spotify

Exploration d'un jeu de données regroupant les 100 chansons les plus streamées de l'histoire de Spotify (titre, artiste, nombre de streams, genre, BPM, année de sortie, pays, danceability, energy, valence...).
Le projet est construit en deux itérations, pour comparer deux approches de traitement des données en Python :

Itération 2 : exploration du fichier CSV avec les structures de base de Python (listes, boucles, dictionnaires), sans bibliothèque externe. Objectif : manipuler les données "à la main" pour bien comprendre la logique sous-jacente avant d'utiliser des outils dédiés.
Itération 3 : reprise de la même analyse avec la bibliothèque pandas, afin de comparer la lisibilité et l'efficacité par rapport à l'approche précédente.

Parmi les analyses réalisées : identification des chansons par pays d'origine, répartition par année de sortie, artiste le plus prolifique du classement, proportion de collaborations entre artistes, ainsi qu'une analyse des caractéristiques musicales (BPM, danceability, energy) avec visualisations.
Technologies utilisées : Python, csv (module standard), pandas, matplotlib

Itération 3 : Ce notebook reprend l'analyse du jeu de données du Top 100 Spotify (titre, artiste, pays, année de sortie, nombre de streams, danceability, BPM...) en utilisant la bibliothèque pandas plutôt que les structures de base de Python. L'objectif est de comparer la lisibilité et l'efficacité de pandas par rapport à une approche manuelle (listes, boucles, dictionnaires).
