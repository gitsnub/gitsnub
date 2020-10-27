# Microsoft GitHub<br/>taking free software down, one DMCA notice at a time

Lately Microsoft GitHub caved to RIAA and [blocked `youtube-dl`](). This is [bad for many reasons](https://freedom.press/news/riaa-github-youtube-dl-journalist-tool/), but shows why using a centralized, corporate-controled walled garden is a dangerous thing.

Microsoft GitHub (and RIAA) should have known better &mdash; not least because [Streisand Effect is a thing](https://en.wikipedia.org/wiki/Streisand_effect). So, here's a list of `youtube-dl` mirrors:
 - https://codeberg.org/polarisfm/youtube-dl
 - https://git.nixnet.xyz/Amolith/youtube-dl
 - https://code.loranger.xyz/rob/youtube-dl
 - https://git.hackers.town/The_gibson/youtube-dl2.git
 - https://gitlab.com/nephros/youtube-dl
 - https://salsa.debian.org/debian/youtube-dl
 - https://git.marcg.pizza/~marcg/youtube-dl
 - https://git.osuv.de/star/youtube-dl
 - https://github.com/TeamNewPipe/NewPipe/
 - https://git.nixnet.xyz/Amolith/NewPipe
 - https://code.loranger.xyz/rob/NewPipe
 
[Here's another source of mirror links](https://docs.nixnet.services/Mirror_lists), for good measure.

Now, *hilariously* GitHub also [decided not to fix a potential security issue related to how repository forks are kept on the back-end](https://iain.learmonth.me/blog/2019/2019w371/). This makes it possible to make it seem like an upstream repo contains content that has never actually been merged into it.

In other words, GitHub has no issue with [`youtube-dl` seemingly hosted in GitHub's own DMCA repository](https://github.com/github/dmca/tree/416da574ec0df3388f652e44f7fe71b1e3a4701f).  And so, you can still clone the original `youtube-dl` code using GitHub's own DMCA repo (the irony is just too sweet):
```
git clone -n https://github.com/github/dmca.git youtube-dl && cd youtube-dl && git fetch origin 416da574ec0df3388f652e44f7fe71b1e3a4701f && git checkout FETCH_HEAD
```

## 🔥 Microsoft GitHub: this is fine 🔥

So, I guess this is fine:
 - 

## Better alternatives

 - [SourceHut](https://sr.ht/) is a nice, ethical forge.
 - [GitLab](https://gitlab.com/) is a good "batteries-included" alternative; it is self-hostable, or you can set-up an account on one of the many public instances.
 - [Gitea](https://gitea.io/en-us/) is a minimalistic self-hostable forge.
