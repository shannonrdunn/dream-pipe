from imgurpython import ImgurClient

client_id = '91933b9e51c9b72'
client_secret = 'b282e5ec9db7b78f93a87c23a1cab33ea443bdd3'

client = ImgurClient(client_id, client_secret)
path = '/src/output.jpg'
# Example request
print client.upload_from_path(path, config=None, anon=True)
