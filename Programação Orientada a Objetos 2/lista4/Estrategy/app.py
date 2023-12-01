from OrdenacaoInsercao import OrdenacaoInsercao
from OrdenacaoSelecao import OrdenacaoSelecao
from Sorter import Sorter

vetor = [4,1,4,6,7]


insertion  = OrdenacaoInsercao(vetor)
seletion = OrdenacaoSelecao(vetor)

sorter = Sorter(insertion)
sorter.ordenando()

sorter.set_metodo(seletion)
sorter.ordenando()
