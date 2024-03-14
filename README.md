# devanagari-to-thai

Devanagari-to-Thai transliteration

## Status

Experimental

## Installation

```
(ql:quickload "devanagari-to-thai")
```

This package requires SBCL, Quicklisp package manager with Ultralisp repository.

If your computer doesn't have SBCL and you use Debian. You probably want to install it.

```
su -c 'apt install sbcl
```

If your computer doesn't have Quicklisp. You probably want to install it.

```
rm quicklisp.lisp
wget https://beta.quicklisp.org/quicklisp.lisp
sbcl --load quicklisp.lisp \
	--eval '(quicklisp-quickstart:install)' \
	--eval '(ql-util:without-prompting (ql:add-to-init-file))' \
	--quit
rm quicklisp.lisp
```

You probably want to add Ultralisp repository as well.

```
sbcl --eval '(ql-dist:install-dist "http://dist.ultralisp.org/" :prompt nil)' --quit
```


## Main repository

https://codeberg.org/veer66/devanagari-to-thai/

## Example

```
* (require :devanagari-to-thai)
NIL
* (devanagari-to-thai:transliterate "मैथिलि ठाकुर")
"ไมถิลิ ฐากุร"
* 
```
