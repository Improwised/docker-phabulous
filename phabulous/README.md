[Phabulous](http://i.imgur.com/0ezr6XZ.png)

[Example](http://i.imgur.com/Uv4nVJa.png)

Phabulous is a Slack bot for Phabricator.

> **Node.js version:** The Javascript version of this project has been replaced
with a rewrite from scratch in Go. The code for the Javascript version is
available at the **legacy** branch, but it won't be actively maintained.<

[Build Status](https://travis-ci.org/etcinit/phabulous.svg?branch=master)
[Docker Repository on
Quay](https://quay.io/repository/etcinit/phabulous/status) 
[Go Report
Card]	(https://goreportcard.com/badge/github.com/etcinit/phabulous)

## Docker-yml guide
- Yml file contains environment variables which override default configurations.
- Sample yml can be found [here](https://github.com/etcinit/phabulous/tree/master/resources/kubernetes)

## Features

- Post URLs to revisions and tasks right from Slack.
- Summon (mention) reviewers of a revision.
- Route specific events (Tasks, Revisions, Commits) into specific channels.
- Push all feed events into a single channel (This may flood a channel if your
  organization is big enough).
- Pretty icons ;)

## Guides

- [Getting Started](https://github.com/etcinit/phabulous/wiki/Getting-Started):
A guide on how to setup Phabulous for the first time.
- [Upgrade Notes](https://github.com/etcinit/phabulous/wiki/Upgrade-Notes):
Instructions on how to upgrade to newer versions of Phabulous.
- [Command Reference](https://github.com/etcinit/phabulous/wiki/Command-Reference):
Reference for all available bot commands.
- [Help & Troubleshooting](https://github.com/etcinit/phabulous/wiki/Help-&-Troubleshooting):
Tips and answers to common problems.
- [Wiki](https://github.com/etcinit/phabulous/wiki): More articles and
information about Phabulous.

## Compiling from source

To compile Phabulous, you need a recent version of Go (>= 1.7):

```
go get github.com/etcinit/phabulous/cmd/phabulous

// or, for cross-compiling:

go get github.com/laher/goxc
git clone git@github.com:etcinit/phabulous.git
cd phabulous
go get ./... && go get github.com/stretchr/testify
make
```
