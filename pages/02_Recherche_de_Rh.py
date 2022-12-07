import streamlit as st
from modules.administration import Archive
from modules.search import search_patient,search_rh
# ---------------------------------------------------------------------
# MENU
#----------------------------------------------------------------------
st.set_page_config(page_title="CHU - SEARCH", page_icon=":hospital:", layout="wide")



# ---------------------------------------------------------------------
# FORMULAIRE DE RECHERCHE DE RH ET AFFICHAGE SOUS FORMAT DATAFRAME 
#----------------------------------------------------------------------
with st.form("Recherche_r"):
    st.subheader("Recherche de Rh")
    col1,col2,col3 = st.columns(3)
    with col1:
        nom_r = st.text_input('Nom commençant par : (optionnel)', '')
    with col2:
        salaire = st.slider('Salaire minimum',1.1,9.9,(2.5,7.5))
    with col3:
        present_r = st.selectbox("Toujours en activité ?",("Peu importe","oui","non"))
    
    if st.form_submit_button("RECHERCHER"):
        search_rh(nom_r,salaire,present_r).search()

# ---------------------------------------------------------------------
# FORMULAIRE DE SUPPRESSION DE RESIDENT DE LA BDD
#----------------------------------------------------------------------
with st.form("supp"):
    st.subheader("Supprimer un Rh de la base de données")
    col1,col2= st.columns(2)
    with col1:
        id = st.text_input("Coller l'id du Rh à retirer")
    with col2:
        if st.form_submit_button("SUPPRIMER"):
            Archive.delete_rh(id)



# ---------------------------------------------------------------------
# FORMULAIRE POUR AJOUTER UNE DATE DE SORTIE
#----------------------------------------------------------------------
with st.form("upload"):
    st.subheader("Fin de contrat du Rh")
    col1,col2= st.columns(2)
    with col1:
        id1=st.text_input("Coller l'id du Rh pour enrigistrer sa sortie à la date du jour")
    with col2:
        if st.form_submit_button("VALIDER SA SORTIE"):
            Archive.sortie_rh(id1)
