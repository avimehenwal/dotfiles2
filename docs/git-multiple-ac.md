# Multiple git accounts

```
# personal
[includeIf "gitdir:~/WORK/avimehenwal/"]
  path = ~/.gitconfig-avi-github

# work-1
[includeIf "gitdir:~/WORK/<ORGANIZATION>/"]
  path = ~/.gitconfig-ORGANIZATION

[alias]
	s = status
	co = checkout
	ca = commit --amend
[log]
	date = relative
```

Sample account specific gitconfig file

```
[user]
    name = avimehenwal
    email = SOME_EMAIL_ID
	  signingkey = GPG_SIGN_KEY
[core]
    editor = nvim
[gpg]
    program = gpg
[commit]
    gpgsign = true
```
