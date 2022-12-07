import streamlit as st
from PIL import Image
import datetime
from modules.fake_resident import Ajouts
from modules.resident import Patient,Rh,Id
from modules.administration import Archive

# ---------------------------------------------------------------------
# MENU
#----------------------------------------------------------------------
st.set_page_config(page_title="CHU - Ajout resident", page_icon=":hospital:", layout="wide")

# ---------------------------------------------------------------------
# Ajouts manuel d'un patient
#----------------------------------------------------------------------
with st.form("patient"):
    st.subheader("Ajout de patient")
    col1, col2, col3 = st.columns(3)
    with col1:
        nom = st.text_input('Nom du patient', '')
    with col2:
        prenom = st.text_input('Prenom du patient', '')
    with col3:
        groupe = st.selectbox('Groupe sanguin du patient',
                            ('O-','O+','B-','B+','A-','A+','AB-','AB+'))
    
    col1, col2, col3 = st.columns(3)
    with col1:
        d_entree_p = st.date_input("Date d'entrée", datetime.date.today())
    with col2:
        present = st.radio("Toujours hospitalisé",("oui","non"))
    with col3:
        d_sortie_p = st.date_input("Si le patient n'est plus présent dans l'hopital vauillez renseigner sa date de sortie",
                                     datetime.date.today())
    col1,col2,col3 = st.columns(3)
    with col2:
        if st.form_submit_button("ENREGISTRER LE PATIENT"):
            if present == "oui":
                
                new_patient = Patient(Id(nom,prenom,groupe,d_entree_p).crea_id(),nom,prenom,groupe,1)
                new_archive = Archive(Id(nom,prenom,groupe,d_entree_p).crea_id(),d_entree_p,0)
            else:
                new_patient = Patient(Id(nom,prenom,groupe,d_entree_p).crea_id(),nom,prenom,groupe,0)
                new_archive = Archive(Id(nom,prenom,groupe,d_entree_p).crea_id(),d_entree_p,d_sortie_p)
            new_patient.save_patient_to_db()
            new_archive.enregister_en_base()

            
# ---------------------------------------------------------------------
# Ajouts manuel d'un Rh
#----------------------------------------------------------------------
with st.form("RH"):
    st.subheader("Ajout de RH")
    col1, col2 = st.columns(2)
    with col1:
        nom_r = st.text_input('Nom du RH', '')
    with col2:
        prenom_r = st.text_input('Prenom du patient', '')

    col1, col2 = st.columns(2)
    with col1:
        groupe_r =st.selectbox('Groupe sanguin du patient',
                            ('O-','O+','B-','B+','A-','A+','AB-','AB+'))
    with col2:
        salaire = st.slider('Salaire en K€',1.1,9.9,step=0.1)

    col1, col2, col3 = st.columns(3)
    with col1:
        d_entree_r = st.date_input("Date d'entrée", datetime.date.today())
    with col2:
        present = st.radio("Toujours en activité ?",("oui","non"))
    with col3:
        d_sortie_r = st.date_input("Si le Rh n'est plus présent dans l'établissement veuillez renseigner sa date de fin de contrat", datetime.date.today())

    col1, col2, col3 = st.columns(3)
    with col2:
        if st.form_submit_button("ENREGISTRER LE RH"):
            if present == "oui":
                new_patient = Rh(Id(nom_r,prenom_r,groupe_r,d_entree_r).crea_id(),nom_r,prenom_r,salaire,1)
                new_archive = Archive(Id(nom_r,prenom_r,groupe_r,d_entree_r).crea_id(),d_entree_r,0)
            else:
                new_patient = Rh(Id(nom_r,prenom_r,groupe_r,d_entree_r).crea_id(),nom_r,prenom_r,salaire,0)
                new_archive = Archive(Id(nom_r,prenom_r,groupe_r,d_entree_r).crea_id(),d_entree_r,d_sortie_r)
            new_patient.save_rh_to_db()
            new_archive.enregister_en_base()


# ---------------------------------------------------------------------
# Ajouts aléatoire de résidents (patients et rh)
#----------------------------------------------------------------------
with st.form("Fake"):
    st.subheader("Ajout de Faux résidents")
    col1,col2= st.columns(2)
    with col1:
        fake_resident = st.slider('Nombre de faux résident',1,100)
    with col2:
        fake_rh = st.slider('Nombre de faux Rh',1,10)
    
    col1,col2,col3 = st.columns(3)
    with col2:
        if st.form_submit_button("CREER LES FAUX RESIDENTS"):
            fake = Ajouts(fake_resident,fake_rh)
            fake.ajout_patients()
            fake.ajout_rh()
            

# ---------------------------------------------------------------------
# Vider les tables de la bases de données
#----------------------------------------------------------------------   

st.markdown("---")
col1,col2,col3 = st.columns(3)
with col2:
    if st.button("VIDER LES TABLES DE LA BASE DE DONNEES"):
        Archive.vider_les_tables()
st.markdown("---") 