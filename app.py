import pika
import time

time.sleep(5)

connection = pika.BlockingConnection(pika.ConnectionParameters('broker'))
channel = connection.channel()

channel.queue_declare(queue='hello')

channel.basic_publish(exchange='', routing_key='hello', body='Hello World!')
print(" [x] Sent 'Hello World!'")
connection.close()