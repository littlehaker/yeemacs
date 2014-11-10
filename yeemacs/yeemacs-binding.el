(defun global-set-evil-key (key cmd)
  (progn
    (define-key evil-normal-state-map key cmd)
    (define-key evil-insert-state-map key cmd)))

;; buffer list
(global-set-key (kbd "s-b") 'helm-buffers-list)

;; window switch
(global-set-key (kbd "s-w") 'other-window)

;; M-x
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "s-p") 'helm-M-x)

;; projectile
(global-set-key (kbd "s-P") 'helm-projectile)
;; (global-set-key (kbd "s-o") 'helm-projectile)

(global-set-key (kbd "s-o") 'helm-occur)
(global-set-key (kbd "s-r") 'helm-imenu)

;; cursor move
(global-set-evil-key (kbd "C-a") 'move-beginning-of-line)
(global-set-evil-key (kbd "C-e") 'move-end-of-line)
(global-set-evil-key (kbd "C-n") 'next-line)
(global-set-evil-key (kbd "C-p") 'previous-line)

;; commenter
(global-set-key (kbd "s-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

;; neotree
(global-set-key (kbd "s-t") 'neotree-toggle)

;; evil normal state
(define-key evil-normal-state-map [tab] 'indent-for-tab-command)

;; evil leader
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "hb" 'helm-buffers-list
  "hp" 'helm-projectile
  "ho" 'helm-occur
  "hi" 'helm-imenu
  "hx" 'helm-M-x)

(evil-leader/set-key
  "hgs" 'monky-status
  "gs" 'magit-status)

;; toggle
(evil-leader/set-key
  "tn" 'global-linum-mode
  "tt" 'neotree-toggle)

;; commenter
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line)

(evil-leader/set-key
  "ag" 'helm-ag)

;; evil insert state
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)

(provide 'yeemacs-binding)
