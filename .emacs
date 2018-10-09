(setq-default indent-tabs-mode nil)

(setq c-default-style "k&r"
      c-basic-offset 4)

(setq
      backup-by-copying t    ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.saves/")) ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)     ; use versioned backups

(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces)
