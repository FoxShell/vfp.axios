# vfp.axios 

Rest Client, Web request from VFP

# Be an sponsor


My goal is to reach 100 USD for this library. Help me to achieve it. 

Make open source software is hard, and need many time. Please consider donate, your name will appear here

* Donate to paypal [![](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=XTUTKMVWCVQCJ&source=url)



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


3. Post request 

Please see the file: [samples/post.prg](./samples/post.prg). 
You can send data as JSON, or as form data
