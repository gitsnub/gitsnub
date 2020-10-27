# Microsoft GitHub<br/>taking free software down, one DMCA notice at a time

Microsoft GitHub has caved to RIAA and [blocked `youtube-dl`](). This is [bad for many reasons](https://freedom.press/news/riaa-github-youtube-dl-journalist-tool/), and shows why using a centralized, corporate-controled walled garden is dangerous for free/libre/open source software projects.

Microsoft GitHub (and RIAA) should have known better, though &mdash; not least because [Streisand Effect is a thing](https://en.wikipedia.org/wiki/Streisand_effect). So, here's a list of `youtube-dl` mirrors:
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

GitHub also [decided not to fix a potential security issue related to how repository forks are kept on the back-end](https://iain.learmonth.me/blog/2019/2019w371/). This makes it possible to show arbitrary content in the context of any public upstream repo even if it has never actually been merged into it.

In other words, GitHub has no issue with [`youtube-dl` seemingly hosted in GitHub's own DMCA repository](https://github.com/github/dmca/tree/416da574ec0df3388f652e44f7fe71b1e3a4701f).  And so, you can still clone the original `youtube-dl` code using GitHub's own DMCA repo (the irony is just too sweet):
```
git clone -n https://github.com/github/dmca.git youtube-dl && cd youtube-dl && git fetch origin 416da574ec0df3388f652e44f7fe71b1e3a4701f && git checkout FETCH_HEAD
```

## 🔥 Microsoft GitHub: this is fine 🔥

So, I guess this is fine:
 - https://github.com/microsoft/vscode/blob/179b91033ec39fbef969281716ecf37c07184683/GITHUB_IS_EVIL.md
 - https://github.com/github/docs/blob/96bacc64dde55edbc4aa4f6e6a18f713200cd28f/GITHUB_IS_EVIL.md
 - https://github.com/github/fetch/blob/938303e5ea92824c0cdd8ae0ba6c47ab77418d33/GITHUB_IS_EVIL.md
 - https://github.com/microsoft/MLOS/blob/e4b537d25a5bfdea3bb0f2910b5b404b3d4de7db/GITHUB_IS_EVIL.md
 - https://github.com/github/training-kit/blob/7fdaaf1b4deed2689669e16959625c9be9485ace/GITHUB_IS_EVIL.md
 - https://github.com/microsoft/TypeScript/blob/a8fcd50d4ccff302b8175275230b05b252d3a1b4/GITHUB_IS_EVIL.md
 - https://github.com/microsoft/terminal/blob/9bd080ddbbfffd03925b9625ae534fe214283b11/GITHUB_IS_EVIL.md
 - https://github.com/github/VisualStudio/blob/adb9631620d67164c429cf59b023863c7b21b423/GITHUB_IS_EVIL.md


## Better alternatives

More importantly, stop using Microsoft GitHub. There are many alternatives, here are some really good ones:

 - [SourceHut](https://sr.ht/) is a nice, ethical forge.
 - [GitLab](https://gitlab.com/) is a good "batteries-included" alternative; it is self-hostable, or you can set-up an account on one of the many public instances.
 - [Gitea](https://gitea.io/en-us/) is a minimalistic self-hostable forge.

## GitSnub

GitSnub is here:
 - https://fosstodon.org/@gitsnub
 - https://github.com/gitsnub/gitsnub/
 - repo outside of GitHub coming next

If you want to join the fun, you can use [`gitsnub.sh`](https://github.com/gitsnub/gitsnub/blob/main/gitsnub.sh); all you need is a GitHub account and a [Personal Token](https://github.com/settings/tokens) with `repo` and `admin:org` access.

But *do not* create a GitHub just for this! You can use your time way better by going to any other forge and creating a fun project of your own.
