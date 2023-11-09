from abc import ABC
import pickle
import sys

class DAO(ABC):
    def __init__(self, datasource=''):
        self.datasource = datasource
        self.cache = {}  # Um dicionário que atua como um cache de objetos

        try:
            self.__load()  # Tentativa de carregar os dados do arquivo

        except FileNotFoundError:
            self.dump()  # Se o arquivo não existe, cria um arquivo vazio

    def dump(self):
        arquivo = open(self.datasource, 'wb')
        pickle.dump(self.cache, arquivo)
        arquivo.close()

    def __load(self):
        self.cache = pickle.load(open(self.datasource, 'rb'))

    def add(self, key, obj):
        self.cache[key] = obj  # Adiciona um objeto ao cache
        self.dump()  # Salva o cache atualizado no arquivo


    def remove(self, key, obj):
        try:
            self.cache.pop(key)  # Remove um objeto pelo sua chave
            self.dump()  # Salva o cache atualizado no arquivo
            return True
        except KeyError:
            raise  # Se a chave não existe no cache, levanta uma exceção

    def get_all(self):
        return self.cache


    def export_source(self, caminho: str):
        if '.pkl' not in caminho:
            caminho += '.pkl'
        arquivo = open(caminho, 'wb') #abre um arquivo e na linha abaixo salva o objeto cache nesse arquivo
        pickle.dump(self.cache, arquivo) #serializa (pega o objeto python e passa p binário)
        arquivo.close()

    def import_source(self, caminho: str):
        arquivo = open(caminho, 'rb')
        objeto = pickle.load(arquivo) #dessserializar (pegar em binário e traz de volta p obj python)
        arquivo.close()
        for regiao, votos in objeto.items():
            self.cache[regiao] = votos

        self.dump
