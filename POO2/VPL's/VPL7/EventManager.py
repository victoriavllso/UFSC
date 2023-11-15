class EventManager:
  def __init__(self):
    self.listeners = {}
    
  def subscribe(self, event_type, listener):
    if self.listeners.get(event_type):
      self.listeners[event_type].append(listener)
    else:
      self.listeners[event_type] = [listener]
    
  def unsubscribe(self, event_type, listener):
    if self.listeners.get(event_type):
      self.listeners[event_type].remove(listener)
    
  def notify(self, event_type):
    for l in self.listeners[event_type]:
      l.update()