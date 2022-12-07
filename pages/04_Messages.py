import streamlit as st
from PIL import Image
import os, os.path



# ---------------------------------------------------------------------
# MENU
#----------------------------------------------------------------------
st.set_page_config(page_title="CHU - messages", page_icon=":hospital:", layout="wide")


f = open(f"message/notes_rh.md", "r")
for line in f:
    st.markdown(line)
st.markdown("---")
st.markdown("---")
f = open(f"message/notes_chef_de_service.py", "r")
for line in f:
    st.markdown(line)
