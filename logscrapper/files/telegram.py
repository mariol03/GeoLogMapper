import requests

class TelegramAPI:
	def __init__(self,bot_id,chat_id):
		self.URI=f'https://api.telegram.org/{bot_id}/'
		self.chat_id=chat_id

	def sendMessage(self,text):
		self.URI_send=self.URI+'sendMessage'
		self.DATA = {'chat_id':self.chat_id,'text':text,'parse_mode':'MarkdownV2'}
		self.r = requests.post(self.URI_send,json=self.DATA)
		return self.r

	def sendImage(self,image):
		self.URI_send=self.URI+'sendPhoto?chat_id='+self.chat_id
		img = open(image,'rb')
		self.DATA = {'photo':img}
		self.r = requests.post(self.URI_send,files=self.DATA)
		return self.r