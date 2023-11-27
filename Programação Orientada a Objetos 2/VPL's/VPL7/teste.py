    def exportar(self):
        event, values = self.__telaExport.le_eventos()

        exportacao_ativada = True
        if event == sg.WIN_CLOSED:
            self.__telaExport.fim()
            exportacao_ativada = False
        elif event == 'Exportar':
            caminho = values['caminho_exportacao']
            self.__candidatoDAO.set_data_source(caminho)
            self.__telaExport.fim()
            exportacao_ativada = False

        return exportacao_ativada
    