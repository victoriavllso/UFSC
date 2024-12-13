import scala.collection.immutable.Map
import scala.io.Source
import scala.collection.mutable.{Map => MutableMap}

def solveKojun(
  fillMatrix: List[List[Int]],
  regions: Map[String, List[(Int, Int)]],
  size: Int,
  x: Int,
  y: Int
): Option[List[List[Int]]] = {

  // Caso base 1
  if ((x == size - 1) && (y == size)) {
    Some(fillMatrix) // Se chegamos ao final, retornamos a matriz
  }
  // Caso base 2
  else if (y == size) {
    solveKojun(fillMatrix, regions, size, x + 1, 0) // Passamos para a próxima linha
  }
  // Caso base 3
  else if (fillMatrix(x)(y) > 0) {
    solveKojun(fillMatrix, regions, size, x, y + 1) // Passamos para a próxima célula
  }
  // Caso geral
  else {
    tryNumbers((1 to size).toList, fillMatrix, regions, size, x, y) // Tentamos preencher com números de 1 até `size`
  }
}

def tryNumbers(
  nums: List[Int],
  fillMatrix: List[List[Int]],
  regions: Map[String, List[(Int, Int)]],
  size: Int,
  x: Int,
  y: Int
): Option[List[List[Int]]] = {

  nums match {
    case Nil => None // Se não conseguimos preencher com nenhum número, retornamos None
    case num :: rest =>
      if (isSafe(fillMatrix, regions, size, x, y, num)) { // Verifica se o número é seguro
        // Atualiza a matriz com o número escolhido
        val newMatrix = updateMatrix(fillMatrix, x, y, num)

        // Chama recursivamente `solveKojun` com a nova matriz e a próxima célula
        solveKojun(newMatrix, regions, size, x, y + 1) match {
          case Some(solution) => Some(solution)
          case None => tryNumbers(rest, fillMatrix, regions, size, x, y) // Tenta o próximo número se falhar
        }
      } else {
        tryNumbers(rest, fillMatrix, regions, size, x, y) // Tenta o próximo número
      }
  }
}

// Função auxiliar para atualizar um elemento da matriz
def updateMatrix(
  matrix: List[List[Int]],
  x: Int,
  y: Int,
  value: Int
): List[List[Int]] = {
  matrix.updated(x, matrix(x).updated(y, value))
}



