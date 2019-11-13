DO (GETENV("userprofile") + "\Kawix\Shide\interop")
DO (GETENV("userprofile") + "\Kawix\Shide.lib\axios")

LOCAL req
* public, so you can inspect in debugger
public response 


* Send as form data 
req = axios()
req.method = 'POST'
req.form.addparameter("from", "VFP9 using vfp.axios")
req.url = "https://httpbin.org/post"
response = req.getResponse()
? m.response.data .form.from 


* send as json data 
req = axios()
req.method = 'POST'
req.body.addparameter("from", "VFP9 using vfp.axios")
req.url = "https://httpbin.org/post"
response = req.getResponse()
? m.response.data.json.from 

