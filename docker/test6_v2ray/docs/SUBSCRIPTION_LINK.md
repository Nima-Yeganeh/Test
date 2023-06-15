# Why we need subscription link?

What if your settings change frequently? Generating new settings and copying and pasting isn't always convenient or easy. What if our changes are always accessible by a link, and we subscribe to that link? Yeah! This is a better solution.

# How to create V2Ray subscription server? (Concept)


- First, you need to list all of your V2ray configurations line by line:

```
For example:

vmess://xxxxxx
vmess://yyyyyy
vmess://zzzzzz
```
- Then you should encode whole string to base64:

```
For example (pseudo code):

base64(
vmess://xxxxxx
vmess://yyyyyy
vmess://zzzzzz
)

Result:

dm1lc3M6Ly94eHh4eHgKdm1lc3M6Ly95eXl5eXkKdm1lc3M6Ly96enp6eno=
```

- And finally, you can put this string in a file and serve this file with a WebServer (Nginx, Apache or anything else.)

```
For example:

python -m http.server 8000

Or

php -S localhost:8000

Or Nginx, Apache and etc.
```


