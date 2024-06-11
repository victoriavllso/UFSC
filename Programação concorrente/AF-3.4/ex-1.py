from time import sleep
from random import randint
from threading import Thread, Lock, Condition

def produtor():
  global buffer
  for i in range(10):
    sleep(randint(0,2))           # fica um tempo produzindo...
    item = 'item ' + str(i)
    with lock:
      while len(buffer) == tam_buffer:
        print('>>> Buffer cheio. Produtor ira aguardar.')
        lugar_no_buffer.wait()    # aguarda que haja lugar no buffer
      buffer.append(item)
      print('Produzido %s (ha %i itens no buffer)' % (item,len(buffer)))
      item_no_buffer.notify()

def consumidor():
  global buffer
  for i in range(10):
    with lock:
      while len(buffer) == 0:
        print('>>> Buffer vazio. Consumidor ira aguardar.')
        item_no_buffer.wait()   # aguarda que haja um item para consumir 
      item = buffer.pop(0)
      print('Consumido %s (ha %i itens no buffer)' % (item,len(buffer)))
      lugar_no_buffer.notify()
    sleep(randint(0,2))         # fica um tempo consumindo...

buffer = []
tam_buffer = 5
lock = Lock() #objeto bloqueio (quando uma thread adquire, as outras ficam bloqueadas até que a primeira libere)
lugar_no_buffer = Condition(lock)
item_no_buffer = Condition(lock) #wait, notify e notify_all
#produtor = Thread(target=produtor)  

#------------- inicia as threads produtoras e consumidoras
produtoras = []
consumidoras = []
for i in range(2):
  produtoras.append(Thread(target=produtor))
  consumidoras.append(Thread(target=consumidor))

for i in range(2):
  consumidoras[i].start()
  produtoras[i].start()

#------------- finaliza as threads produtoras e consumidoras
for i in range(2):
  produtoras[i].join()
  consumidoras[i].join()

#produtor.start()
#consumidor.start()
#produtor.join()
#consumidor.join() 