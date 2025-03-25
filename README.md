﻿# Gestion des instances EC2 AWS avec Terraform
Ce projet contient un ensemble de configurations Terraform pour déployer une instance EC2 sur AWS.

## Contenu
- Création d'un VPC.
- Déploiement de groupes de sécurité pour permettre les connexions SSH et HTTP.
- Génération d'une clé SSH pour sécuriser l'accès aux instances.
- Configuration des réseaux (subnets) pour isoler les instances dans des sous-réseaux spécifiques.

## Prérequis
- Terraform installé sur votre machine.
- Un compte AWS et des clés d'accès configurées pour Terraform.

## Installation
1. Clonez ce projet.
2. Modifiez les fichiers de variables si nécessaire.
3. Exécutez les commandes Terraform suivantes : 
   - terraform init
   - terraform plan
   - terraform apply

## A propos de ce projet
Ce projet est un exemple de la gestion d'infrastructure avec Terraform pour AWS, incluant la création d'instances EC2, la gestion des réseaux, et la sécurité.
