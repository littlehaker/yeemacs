(require 'package)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; install default packages
(defvar yeemacs-packages
  '(
    ;; theme
    moe-theme
    powerline

    ;; helm
    helm
    helm-ag
    helm-dash

    ;; auto-complete
    auto-complete

    ;; evil
    evil
    evil-leader
    evil-surround
    evil-nerd-commenter
    evil-matchit
    
    neotree

    ;; version control
    magit
    monky
    ahg

    ;; key bindings
    guide-key
    guide-key-tip
    
    ;; project
    projectile
    helm-projectile
    
    ;; php
    php-mode

    ;; elisp
    paredit
    paren-face

    smartparens

    ;; web
    web-mode
    emmet-mode

    ;; js
    js2-mode   
    ac-js2
    js2-refactor
    tern
    tern-auto-complete
    js-doc

    ;; json
    json-mode

    ;; keychord
    key-chord
    ))

(dolist (p yeemacs-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'yeemacs-package)
