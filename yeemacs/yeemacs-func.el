;; insert-semicolon-at-end-of-line
(defun insert-semicolon-at-end-of-line ()
  (interactive)
  (move-end-of-line nil)
  (insert ";"))

(provide 'yeemacs-func)
