;; (set-default-font "menlo-16")
;; (set-default-font "inconsolata-18")
(set-default-font "consolas-18")

;; believe me, you don't need toolbar nor scrollbar
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(toggle-frame-maximized)

(require 'moe-theme)
(moe-dark)
(powerline-moe-theme)
(moe-theme-set-color 'w/b)

(show-paren-mode t)
(setq show-paren-style 'expression)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(web-mode-html-tag-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-html-attr-name-face ((t (:inherit font-lock-keyword-face)))))

(provide 'yeemacs-ui)
