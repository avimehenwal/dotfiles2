# Multiple git accounts

```
# personal
[includeIf "gitdir:~/WORK/avimehenwal/"]
  path = ~/.gitconfig-avi-github

# work-1
[includeIf "gitdir:~/WORK/<ORGANIZATION>/"]
  path = ~/.gitconfig-ORGANIZATION

...

[alias]
	s = status
```

Sample account specific gitconfig file

```
[user]
    name = avimehenwal
    email = avi.mehanwal@gmail.com
	  signingkey = GPG_SIGN_KEY
[core]
    editor = nvim
[gpg]
    program = gpg
[commit]
    gpgsign = true
```
