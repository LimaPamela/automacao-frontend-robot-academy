import unicodedata
import re

def remover_acentos(texto):
    texto_sem_acentos = ''.join(c for c in unicodedata.normalize('NFD', texto)
                                if unicodedata.category(c) != 'Mn')
    return re.sub(r'[^\w\s]', '', texto_sem_acentos)
