---
vim: et ts=2 sts=2 sw=2
title: site journées perl
keywords: perl hackathon workshop perl6 perl5 meeting
author: Marc Chantreux <marc.chantreux@renater.fr>
---

repo for the [Act](http://act.mongueurs.net/) website of [journées perl 2019](https://journeesperl.fr/jp2019/)

# usage

the content if this site use [template toolkit](https://metacpan.org/pod/Template) at server side. pages are stored in
`actdocs/static/` while layouts (wrappers) and widgets are stored in `actdocs/templates`.

i don't want to edit the pages directly so the code to edit lives in `src` using the (pug)[http://pugjs.org/] and you have to process them using `make` before pushing them.

# useful vim macros there

    inoremap @@ #[a(href="") ]<c-o>F"
    inoremap ## [%#<cr><cr><cr><cr>%]<c-o>2k

# todo

* reactivations dans actdocs/templates/menus/information
* actdocs/src/index-fr.md status: translate-en:0% review:0%
* revoir code of conduct
* organiser/annoncer le social event ?

