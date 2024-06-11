from time import sleep
from random import randint
from threading import Thread, Semaphore

def produtor():
  global buffer
  for i in range(10):
    sleep(randint(0,2))           # fica um tempo produzindo...
    item = 'item ' + str(i)
    # verifica se há lugar no buffer
    sem_vazio.acquire() # decrementa semáforo de espaços vazios (chegando em 0, bloqueia). O incremento indica que há um espaço a menos vazio
    buffer.append(item)
    sem_cheio.release() # incrementa semáforo de espaços ocupados indicando que há um espaço a mais ocupado
    print('Produzido %s (ha %i itens no buffer)' % (item,len(buffer)))

def consumidor():
  global buffer
  for i in range(10):
    # aguarda que haja um item para consumir 
    sem_cheio.acquire() # decrementa semáforo de espaços ocupados (chegando em 0, bloqueia). Indicando que um espaço foi liberado
    item = buffer.pop(0)
    sem_vazio.release() #incrementa semáforo de espaços vazios, indicando que há um espaço a mais vazio
    print('Consumido %s (ha %i itens no buffer)' % (item,len(buffer)))
    sleep(randint(0,2))         # fica um tempo consumindo...

buffer = []
tam_buffer = 3
# cria semáforos

#produtor = Thread(target=produtor) 
#consumidor = Thread(target=consumidor) 
#produtor.start()
#consumidor.start()
#produtor.join()
#consumidor.join() 
sem_vazio = Semaphore(tam_buffer) # quantidade de espaços livres
sem_cheio = Semaphore(0) # quantidade de espaços ocupados

produtoras = []
consumidoras = []
for i in range(2):
  produtoras.append(Thread(target=produtor))
  consumidoras.append(Thread(target=consumidor))

for i in range(2):
  consumidoras[i].start()
  produtoras[i].start()

for i in range(2):
  produtoras[i].join()
  consumidoras[i].join()
