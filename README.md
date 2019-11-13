# vfp.axios 

Rest Client, Web request from VFP


# Installation 

1. Install [@kawix/core](https://github.com/kodhework/kawix/blob/master/core/INSTALL.md)

2. Install the Shide Lib. From cmd: 

```bash
kwcore gh+/voxsoftware/packages/shide/0.0.2.kwa
```

That's all, you are ready to use. See the examples


# Samples

See samples folder

1. Download and save an image 

```harbour
DO (GETENV("userprofile") + "\Kawix\Shide\interop")
DO (GETENV("userprofile") + "\Kawix\Shide.lib\axios")

LOCAL req

* Make public, so you can inspect in debugger
public response 

req = axios()
req.params.responsetype = 'arraybuffer'
req.url = "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"
response = req.getResponse()


STRTOFILE(response.data, GETENV("userprofile") + "\documents\imagen.jpg")
```


2. Call a JSON API and get object

```harbour
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

```

