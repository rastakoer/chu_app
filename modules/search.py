from modules.connect_db import bdd,cursor
import pandas as pd
import streamlit as st
import numpy as np

class search_patient:
    '''
    Recherche de résident dans la base de données
    '''

    def __init__(self,nom,groupe,present):
        self.nom=nom
        self.groupe=groupe
        self.present=present

    
    def search(self):
        '''
        Va afficher le resultat de la recherche sous forme de dataframe
        '''
        # Requete pour selectionner toutes les infos d'un patients
        query = "SELECT patients.id_patient, patients.nom, patients.prenom,patients.groupe_sanguin, "
        query += "archives.date_entree,archives.date_sortie FROM patients "
        query += "INNER JOIN archives ON patients.id_patient=archives.identifiant_resident "
    
        if self.groupe == "Peu importe" and self.present=="Peu importe":
            query += f"WHERE patients.nom LIKE '{self.nom}%' "
            
        
        elif self.groupe != "Peu importe" and self.present=="Peu importe":
            query += f"""WHERE (patients.nom LIKE '{self.nom}%') AND (patients.groupe_sanguin='{self.groupe}')  """

        elif self.groupe == "Peu importe" and self.present!="Peu importe":
            if self.present == "oui":
                query += f"""WHERE (patients.nom LIKE '{self.nom}%') AND (archives.date_sortie IS NULL)  """
            else:
                query += f"""WHERE (patients.nom LIKE '{self.nom}%') AND (archives.date_sortie IS NOT NULL) """

        else:
            if self.present == "oui":
                query += f"""WHERE (patients.nom LIKE '{self.nom}%') AND (archives.date_sortie IS NULL) AND """
                query += f"""(patients.groupe_sanguin='{self.groupe}') """
            else:
                query += f"""WHERE (patients.nom LIKE '{self.nom}%') AND (archives.date_sortie IS NOT NULL) AND """
                query += f""" (patients.groupe_sanguin='{self.groupe}') """

                      
        cursor.execute(query)
        result= cursor.fetchall()
        df = pd.DataFrame(result, columns=["id_patient","nom","prenom","groupe_sanguin","date_entree","date_sortie"])
        st.dataframe(df, use_container_width=True)

       
    
class search_rh:
    '''
    Recherche de rh dans la base de données
    '''

    def __init__(self,nom,salaire,present):
        self.nom=nom
        self.salaire=salaire
        self.present=present

    def search(self):
        '''
        Va afficher le resultat de la recherche sous forme de dataframe
        '''
        # Requete pour selectionner toutes les infos d'un patients
        query = "SELECT rh.identifiant_rrh, rh.nom, rh.prenom,rh.salaire, "
        query += "archives.date_entree,archives.date_sortie FROM rh "
        query += "INNER JOIN archives ON rh.identifiant_rrh=archives.identifiant_resident "
        
        if self.present == "Peu importe" :
            query += f"WHERE (rh.nom LIKE '{self.nom}%') AND "
            query += f"(rh.salaire>={self.salaire[0]}) AND (rh.salaire<={self.salaire[1]}) "

        elif self.present == "oui":
            query += f"WHERE (rh.nom LIKE '{self.nom}%') AND "
            query += f"(rh.salaire>={self.salaire[0]}) AND (rh.salaire<={self.salaire[1]}) AND "
            query += f"archives.date_sortie IS NULL"
        
        else:
            query += f"WHERE (rh.nom LIKE '{self.nom}%') AND "
            query += f"(rh.salaire>={self.salaire[0]}) AND (rh.salaire<={self.salaire[1]}) AND "
            query += f"archives.date_sortie IS NOT NULL"

        cursor.execute(query)
        result= cursor.fetchall()
        df = pd.DataFrame(result, columns=["id_rh","nom","prenom","salaire","date_entree","date_sortie"])
        st.dataframe(df, use_container_width=True)