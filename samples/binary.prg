DO (GETENV("userprofile") + "\Kawix\Shide\interop")
DO (GETENV("userprofile") + "\Kawix\Shide.lib\axios")

LOCAL req
* public, so you can inspect in debugger
public response 

req = axios()
req.params.responsetype = 'arraybuffer'
req.url = "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"
response = req.getResponse()

* save in documents folder
STRTOFILE(response.data, GETENV("userprofile") + "\documents\imagen.jpg")