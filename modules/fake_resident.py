from modules.resident import Patient,Rh,Id
import random
import names
import datetime
import numpy as np
from datetime import timedelta
from modules.administration import Archive

class Ajouts:
    """
    Permet d'ajouter des patients et des rh 
    """
    def __init__(self, nb_patients: int, nb_rh : int) -> None:      #
        self.nb_patients = nb_patients                              # Recuperation du nombre de patients et rh voulu
        self.nb_rh = nb_rh                                          #        par l'utilisatuer sur streamlit
    
    def ajout_patients(self):
        """
        Ajout de nouveaux patients dans Archives et dans la base de données Rh
        """
        print("je vais dans ajout_patient")
        for i in range(self.nb_patients): 
            name,entree,sortie, groupe, present, id_resident= Ajouts.name_group_bool()
            fake_archive = Archive(id_resident,entree,sortie)
            fake_archive.enregister_en_base()
            fake_resident = Patient(id_resident, name[1], name[0], groupe,present )
            fake_resident.save_patient_to_db()
            
    
    def ajout_rh(self):
        """
        Ajout de nouveaux Rh dans Archives et dans la base de données Rh
        """
        print("je vais dans ajout_rh")
        for rh in range(self.nb_rh):
            salaire= str(round(random.uniform(1.1,9.9),1))
            name,entree,sortie, groupe, present, id_resident= Ajouts.name_group_bool()
            fake_archive = Archive(id_resident,entree,sortie)
            fake_archive.enregister_en_base()
            fake_resident = Rh(id_resident,name[1], name[0],salaire,present)
            fake_resident.save_rh_to_db()

    @staticmethod
    def name_group_bool():
        """
        Fabrication de resident aléatoire
        """
        # liste de groupe sanguin et présent ou non dans l'hopital
        groupe_sanguin = ['O-','O+','B-','B+','A-','A+','AB-','AB+']
        # Creation d'une variable contentant ['prénom','nom']
        name= names.get_full_name().split(" ")
        #entrée aléatoire d'un résident à l'hopital
        entree = datetime.date.today() - timedelta(days=random.randint(1,365))
        # durée aléatoire de présence d'un résident dans l'hopital
        delta_sortie = timedelta(days=random.randint(1,365))
        # Si la durée du séjour + la date d'entrée et supérieure à la date du jour
        # alors la date de sortie est nulle et le resident est toujours dans l'hopital
        # sinon on enregistre la date de sortie et le résident n'est plus dans l'hopital
        if (entree+delta_sortie)>datetime.date.today():
            sortie= 0
            present =1
        else:
            sortie = entree+delta_sortie
            present=0
        # choix aléatoire d'un groupe sanguin
        groupe=random.choice(groupe_sanguin)
        # Fabrication de l'id du résident        
        id_resident = Id(name[1],name[0],groupe,entree).crea_id()
        # On retourne toutes les variables nécessaire pour l'enregistrement
        # en archive ansi que les informations compléte du résident
        return name, entree,sortie, groupe ,present, id_resident


    

