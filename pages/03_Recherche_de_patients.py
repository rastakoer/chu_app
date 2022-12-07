import streamlit as st
from modules.administration import Archive
from modules.search import search_patient,search_rh
# ---------------------------------------------------------------------
# MENU
#----------------------------------------------------------------------
st.set_page_config(page_title="CHU - SEARCH", page_icon=":hospital:", layout="wide")




# ---------------------------------------------------------------------
#  FORMULAIRE POUR RECHERCHE DE PATIENTS ET AFFICHAGE SOUS FORMAT DATAFRAME 
#----------------------------------------------------------------------
with st.form("Recherche_p"):
    st.subheader("Recherche de patients")
    col1,col2,col3 = st.columns(3)
    with col1:
        nom = st.text_input('Nom commençant par : (optionnel)', '')
    with col2:
        groupe =st.selectbox('Groupe sanguin du patient',
                            ('Peu importe','O-','O+','B-','B+','A-','A+','AB-','AB+'))
    with col3:
        present = st.selectbox("Toujours hospitalisé ?",("Peu importe","oui","non"))
    
    if st.form_submit_button("RECHERCHER"):
        search_patient(nom,groupe,present).search()

       

# ---------------------------------------------------------------------
# FORMULAIRE DE SUPPRESSION DE RESIDENT DE LA BDD
#----------------------------------------------------------------------
with st.form("supp"):
    st.subheader("Supprimer un patient de la base de données")
    col1,col2= st.columns(2)
    with col1:
        id = st.text_input("Coller l'id du patient à retirer")
    with col2:
        if st.form_submit_button("SUPPRIMER"):
            Archive.delete_patient(id)



# ---------------------------------------------------------------------
# FORMULAIRE POUR AJOUTER UNE DATE DE SORTIE
#----------------------------------------------------------------------
with st.form("upload"):
    st.subheader("Enregistrer la sortie du patient à la date du jour")
    col1,col2= st.columns(2)
    with col1:
        st.text_input("Coller l'id du patient pour enrigistrer sa sortie")
    with col2:
        if st.form_submit_button("VALIDER SA SORTIE"):
            Archive.sortie_patient(id)
        






