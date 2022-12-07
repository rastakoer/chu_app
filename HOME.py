from modules.resident import Patient
import streamlit as st
from PIL import Image
from modules.administration import Archive



if "main" == __name__:
    pass

# ---------------------------------------------------------------------
# MENU
#----------------------------------------------------------------------
st.set_page_config(page_title="CHU - Home", page_icon=":hospital:", layout="wide")

st.markdown(f""" # ___Il y a actuellement {Patient.count_patients_in_db()[0]} résidents en base de données dont {Patient.count_patients_in_db()[1]}  sont présent dans l'hopital___  """)
st.markdown(" ##  ___Cette application vous permet de gerer le personnel ainsi que les patients de cet hopital___")
st.markdown(" ##  _Si vous rencontrez des problèmes ou si vous voulez apporter des modifications :_")
st.markdown(" ##  _kevin.le-grand@isen-ouest.yncrea.fr_")


# ---------------------------------------------------------------------
# AFFICHAGE DE TOUTES LES ARCHIVES EN CONSOLES OU SUR L'APPLI
#----------------------------------------------------------------------
st.markdown("---")
if st.button("Afficher toute les archives dans la console"):
    Archive.afficher_les_archives_console()

if st.button("Afficher toutes les archives ici"):
    Archive.afficher_les_archives_streamlit()

st.markdown("---")
