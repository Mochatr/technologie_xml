# TP : Technologies XML et Web Services SOAP

Ce dépôt contient les solutions des activités pratiques du cours de Technologie XML et Web Services, encadré par le Pr. Mohamed YOUSSFI. Le projet est divisé en deux grandes parties : la manipulation de données bancaires via XML et la mise en place d'une architecture orientée services (SOA) avec des Web Services SOAP.

---

## 📑 Sommaire
1. [Contexte du Projet](#contexte-du-projet)
2. [Partie 1 : Technologie XML](#partie-1--technologie-xml)
3. [Partie 2 : Web Services SOAP (JAX-WS)](#partie-2--web-services-soap-jax-ws)
4. [Prérequis et Outils](#prérequis-et-outils)
5. [Comment exécuter le projet ?](#comment-exécuter-le-projet-)

---

## 🎯 Contexte du Projet

Ce projet a été réalisé dans le cadre du Master Ingénierie Informatique, Big Data et Cloud Computing à l'ENSET Mohammedia (Université Hassan II de Casablanca). Il vise à consolider les connaissances sur la structuration de données (XML) et l'interopérabilité applicative via le protocole SOAP.

---

## 📂 Partie 1 : Technologie XML

Cette partie se concentre sur la création d'une application permettant de gérer des relevés de comptes bancaires sous format XML.

**Fichiers inclus :**
* `releve.xml` : Le document XML contenant les données du relevé (RIB, date, solde, opérations).
* `releve.dtd` : La Document Type Definition permettant de déclarer et valider la structure graphique de l'arbre XML.
* `releve.xsd` : Le schéma XML pour un typage fort et une validation précise du document.
* `releve_complet.xsl` : Une feuille de style XSLT pour afficher toutes les données au format HTML, incluant le calcul total des débits et des crédits.
* `releve_credits.xsl` : Une feuille de style XSLT filtrant et affichant uniquement les opérations de type CREDIT au format HTML.

---

## ⚙️ Partie 2 : Web Services SOAP (JAX-WS)

Cette partie illustre la création, le déploiement et la consommation d'un Web Service SOAP. 

**Fonctionnalités du Web Service (`BanqueService`) :**
* Convertir un montant de l'euro en DH.
* Consulter un compte bancaire.
* Consulter une liste de comptes.

**Architecture implémentée :**
* **Serveur JAX-WS :** Déploiement du Web Service via la classe `Endpoint` en Java.
* **Client Java :** Consommation du service via la génération d'un Proxy (STUB) avec l'outil `wsimport`.
* **Client PHP :** Démonstration de l'interopérabilité applicative en consommant le service avec un script PHP.

---

## 🛠️ Prérequis et Outils

Pour exécuter ce projet correctement, vous aurez besoin de :
* **IDE :** Visual Studio Code (avec l'extension XML de Red Hat pour la validation).
* **Java :** JDK 8 (qui inclut JAX-WS nativement) ou une version supérieure avec les dépendances Jakarta EE appropriées.
* **PHP :** Un serveur web local (comme XAMPP/WAMP) avec l'extension SOAP activée dans `php.ini`.
* **