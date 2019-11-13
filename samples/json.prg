DO (GETENV("userprofile") + "\Kawix\Shide\interop")
DO (GETENV("userprofile") + "\Kawix\Shide.lib\axios")

LOCAL req
* public, so you can inspect in debugger
public response 

req = axios()
* an api that returns post list
req.url = "https://jsonplaceholder.typicode.com/posts"
response = req.getResponse()


* Show post readed from API
FOR EACH post IN response.data 
	?ALLTRIM(STR(post.userid)) + " - " + post.title
ENDFOR