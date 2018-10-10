;;; PACKAGE
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;; THEME
(require 'doom-themes)
(setq doom-themes-enable-bold t      ; if nil, bold is universally disabled
      doom-themes-enable-italic t    ; if nil, italics is universally disabled
      doom-one-brighter-modeline nil ; below are doom specific
      doom-one-brighter-comments nil)
(load-theme 'doom-one t)

;;; MODES
;; general
(setq-default indent-tabs-mode nil) ; use spaces instead of tabs

;; cc mode
(setq c-default-style "k&r"
      c-basic-offset 4)

;;; KEYBINDS
;; arrow keys for frame navigation
(windmove-default-keybindings)
(global-set-key (kbd "<s-up>") 'windmove-up)
(global-set-key (kbd "<s-down>") 'windmove-down)
(global-set-key (kbd "<s-left>") 'windmove-left)
(global-set-key (kbd "<s-right>") 'windmove-right)

;;; MISC
;; redirect backups
(setq
      backup-by-copying t                ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.emacs.d/autosaves/")) ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)                 ; use versioned backups
