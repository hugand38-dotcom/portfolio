## Contexte

15 CSV bruts (AdventureWorks Cycles) → pipeline complet répondant à 3
problématiques : performance commerciale & canal, produits & catégories,
clients & raisons de vente.
 
## Architecture

CSV → Databricks (ods) → dbt staging (nettoyage, encodage) → dbt core
(schéma en étoile) → Power BI (modèle relationnel, DAX)
 
**Outils** : Databricks, dbt Core, Power BI Desktop, VS Code
 
## Modèle de données

- `fct_vente` (grain : ligne de commande)
- Dimensions : `dim_date`, `dim_produit`, `dim_client`, `dim_raison_vente`,
  `dim_geographie` (**dimension à rôles** : livraison en relation active,
  facturation activée via `USERELATIONSHIP()`)
- `pont_vente_raison` (table de pont many-to-many)
- `dim_taux_change` (référentiel externe)
 
## Défis résolus

- **Encodage** : caractères mal encodés corrigés en staging
  (`decode(encode(col,'ISO-8859-1'),'UTF-8')`)
  
- **Double comptage** : une requête sommant le CA via la table de pont
  comptait deux fois les commandes multi-raisons. Corrigé avec
  `COUNT(DISTINCT salesorderid)` / `DISTINCTCOUNT` en DAX
  
- **Marges négatives** sur certains produits : ni le prix catalogue ni les
  remises n'expliquent l'écart → limite documentée du jeu de données
 
## Enrichissement externe

Taux de change annuels 2011 (USD/CAD/EUR/GBP/AUD), source Federal
Reserve Board — G.5A, publié le 3/01/2012, donnée publique. Intégré via
seed dbt, relié à la géographie pour convertir le CA en devise locale.

## Limites documentées
- Période courte (mai–déc 2011) · sous-catégories manquantes sur certains
  produits, montants en USD indépendamment du pays
 
## Compétences mobilisées
Modélisation dimensionnelle, SQL avancé (fenêtrage, many-to-many), dbt
(staging/core/seeds) DAX, recherche de sources externes · investigation qualité des données
