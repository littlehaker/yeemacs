(setq default-directory "~")

;; add exec-path
(setq exec-path (append exec-path '("/usr/local/bin")))

(multiple-cursors-mode)

(helm-mode)

;; guide key

;; (setq guide-key/guide-key-sequence '("C-x" "C-c" "<space>"))
;; (guide-key-mode 1)

;; linum-mode
(global-linum-mode)

;; auto-complete
(global-auto-complete-mode)
(yas-global-mode)

;; backup in one dir
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 20
   kept-old-versions 5
   version-control t)       ; use versioned backups

(setq auto-mode-alist
      (append '(("\\.js\\'" . js2-mode)
		("\\.jsx\\'" . js2-mode)
		("\\.html\\'" . web-mode)
		("\\.htm\\'" . web-mode)
		("\\.tpl\\'" . web-mode))
	      auto-mode-alist))

;; smartparens
(smartparens-global-mode)

;; keychord
(key-chord-mode 1)

;; change all yes-or-no to y-or-n
(fset 'yes-or-no-p 'y-or-n-p)


;; yas-snippet-dirs
(setq yas-snippet-dirs
      (append '(("~/.emacs.d/snippet"))
	      yas-snippet-dirs))

(provide 'yeemacs-misc)
