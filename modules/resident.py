import pandas as pd
from modules.connect_db import bdd,cursor

class Patient:
    """
    Permet de créer un nouveau patients
    """
    def __init__(self, identifiant_patient, noms, prenoms, groupe_sanguin, is_in_hospital):
        self.identifiant_patient = identifiant_patient
        self.noms = noms
        self.prenoms = prenoms
        self.groupe_sanguin = groupe_sanguin
        self.is_in_hospital = is_in_hospital


    def save_patient_to_db(self):
        """
        Enregistrer les patient en base de données
        """
        query = f"""INSERT INTO patients (id_patient, nom, prenom, groupe_sanguin, is_in_hospital)"""
        query += f""" VALUES ( '{self.identifiant_patient}' , '{self.noms}' , '{self.prenoms}' , '{self.groupe_sanguin}' , {self.is_in_hospital} ) ;"""
        cursor.execute(query)
        bdd.commit()
        print("Patient", self.identifiant_patient,"enregistré en base")

    def count_patients_in_db():
        """
        Compte les patients inscrits en base de données
        Retourne tous les patients et le nombre de patients hospitalisé
        """
        query = f"""SELECT * FROM patients """
        cursor.execute(query)
        result= cursor.fetchall()
        df = pd.DataFrame(result, columns=["id_patient","nom","prenom","groupe_sanguin","is_in_hospital"])
        nb_patitents_bdd = df.shape[0]
        nb_patients_in_hospital = df.loc[df["is_in_hospital"]==1,"nom"].shape[0]
        return nb_patitents_bdd,nb_patients_in_hospital

class Rh:
    """Pour créer un nouveau Rh """
    def __init__(self, identifiant_rh , noms, prenoms, salaire, working_at_hospital):
        self.id_rh = identifiant_rh
        self.noms = noms
        self.prenoms = prenoms
        self.salaire = salaire
        self.working_at_hospital = working_at_hospital

    def save_rh_to_db(self):
        """
        Enregistrer les Rh en base de données
        """
        query = f"""INSERT INTO rh (identifiant_rrh, nom, prenom, salaire, working_at_hospital)"""
        query += f""" VALUES ( '{self.id_rh}' , '{self.noms}' , '{self.prenoms}' , '{self.salaire}' , {self.working_at_hospital} ) ;"""
        cursor.execute(query)
        bdd.commit()
        print("RH", self.id_rh,"enregistré en base")

class Id:
    '''
    Pour créer un Id de résident
    '''
    def __init__(self,nom,prenom,groupe, entree):
        self.nom = nom
        self.prenom =prenom
        self.groupe = groupe
        self.entree = entree

    def crea_id(self):
        new_id= self.nom + self.prenom + self.groupe + str(self.entree)
        return new_id