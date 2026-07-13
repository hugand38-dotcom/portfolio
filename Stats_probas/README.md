Analyse exploratoire de données (EDA) avec Gapminder & Introduction aux séries temporelles

Ce projet regroupe deux notebooks d'introduction à l'analyse de données avec Python, construits autour de la théorie et de sa mise en pratique.

Le premier notebook (1_Intro_Gapminder) est une introduction à l'analyse exploratoire de données (EDA) à partir de deux jeux de données issus de Gapminder : l'espérance de vie par pays au fil du temps et le revenu moyen par habitant par pays de 1800 à 2050. Le notebook suit une progression pédagogique classique d'une EDA : premier regard sur les données (chargement, aperçu, types, valeurs manquantes), préparation des données, puis statistiques univariées (minimum, maximum, moyenne, médiane, mode, histogrammes, boxplots, mesures de dispersion) et enfin statistiques multivariées (normalisation/standardisation, scatter plots, corrélations). Chaque notion est accompagnée d'un rappel théorique, d'un exercice d'application théorique et d'une mise en pratique sur les données.

Le second notebook (2_Time_Series_Analysis) est une introduction à la manipulation de séries temporelles avec Pandas, à partir du jeu de données Air Passengers (nombre de passagers aériens mensuel). Il aborde le chargement et la visualisation d'une série temporelle indexée par date, le changement de fréquence d'échantillonnage (resampling en jour/mois/année), l'interpolation des données manquantes, ainsi que l'identification de patterns (tendance et saisonnalité) et la décomposition additive/multiplicative d'une série temporelle.

Bibliothèques utilisées : pandas, matplotlib, numpy, seaborn, pmdarima, scikit-learn (StandardScaler), scipy.
