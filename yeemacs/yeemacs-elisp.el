(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-off-smartparens-mode) ;disable samrtparen
(add-hook 'emacs-lisp-mode-hook 'paren-face-mode)
(add-hook 'emacs-lisp-mode-hook
           (lambda () (setq mode-name "Elisp")))

(provide 'yeemacs-elisp)
