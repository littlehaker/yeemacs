(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(setq emmet-preview-default nil)
;; regexp to display class in imenu
;; (add-to-list 'web-mode-imenu-regexp-list
;; 	     '(("^[ \t]*<\\([@a-z]+\\)[^>]*>? *$" 1 "class=\"\\([a-zA-Z0-9_]+\\)\"" "." ">")))

(provide 'yeemacs-web)
