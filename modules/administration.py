import numpy as np
import datetime
from datetime import timedelta
import streamlit as st
import pandas as pd
import random
from modules.connect_db import bdd,cursor


class Archive:
    """ Pour ennregistrer ou lire les residents
        Las données retournées seront l'id, la date d'entrée et de sortie
    """

    def __init__(self, id_resident, date_entree, date_sortie) -> None:
        self.id_resident= id_resident
        self.date_entree = date_entree
        self.date_sortie = date_sortie
        
    # Archives ##########################
    def enregister_en_base(self):
        if self.date_sortie == 0:
            query = f"""INSERT INTO archives(identifiant_resident, date_entree)"""
            query +=f"""VALUES ('{self.id_resident}','{self.date_entree}')"""
        else:
            query = f"""INSERT INTO archives(identifiant_resident, date_entree,"""
            query +=f""" date_sortie) VALUES ('{self.id_resident}','{self.date_entree}','{self.date_sortie}')"""
        cursor.execute(query)
        bdd.commit()

    @staticmethod
    def afficher_les_archives_console():
        '''
        Affiche les archives en console
        '''
        query = "SELECT * FROM archives"
        cursor.execute(query)
        result= cursor.fetchall()
        df = pd.DataFrame(result, columns=["id_resident","date_entree","date_sortie"])
        for index, data in df.iterrows():
            print(data)
            print("**************************************************")

    @staticmethod
    def afficher_les_archives_streamlit():
        '''
        Affiche les archives dans l'appli
        '''
        query = "SELECT * FROM archives"
        cursor.execute(query)
        result= cursor.fetchall()
        df = pd.DataFrame(result, columns=["id_resident","date_entree","date_sortie"])
        st.dataframe(df, use_container_width=True)

    @staticmethod
    def vider_les_tables():
        query = "TRUNCATE TABLE archives"
        cursor.execute(query)
        query = "TRUNCATE TABLE rh"
        cursor.execute(query)
        query = "TRUNCATE TABLE patients"
        cursor.execute(query)

    def delete_patient(id):
        query = f"""DELETE FROM archives WHERE archives.identifiant_resident= '{id}' """ 
        cursor.execute(query)
        query = f"""DELETE FROM patients WHERE patients.id_patient= '{id}' """ 
        cursor.execute(query)
        bdd.commit()


    def delete_rh(id):
        query = f"""DELETE FROM archives WHERE archives.identifiant_resident= '{id}' """ 
        cursor.execute(query)
        query = f"""DELETE FROM rh WHERE rh.identifiant_rrh= '{id}' """ 
        cursor.execute(query)
        bdd.commit()

    def sortie_rh(id):
        print(datetime.date.today())
        query = f"""UPDATE archives SET date_sortie = '{datetime.date.today()}' WHERE ( archives.identifiant_resident = '{id}'); """
        cursor.execute(query)
        query = f"""UPDATE rh SET working_at_hospital = 0 WHERE ( rh.identifiant_rrh = '{id}'); """ 
        cursor.execute(query)
        bdd.commit()
    
    def sortie_patient(id):
        query = f"""UPDATE archives SET date_sortie = '{datetime.date.today()}' WHERE ( archives.identifiant_resident = '{id}'); """
        cursor.execute(query)
        query = f"""UPDATE patients SET is_in_hospital = 0 WHERE (patients.id_patient = '{id}'); """ 
        cursor.execute(query)
        bdd.commit()


