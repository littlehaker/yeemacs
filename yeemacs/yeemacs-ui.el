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

(provide 'yeemacs-ui)
