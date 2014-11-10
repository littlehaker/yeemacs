(require 'cl)
(defconst yeemacs-directory (expand-file-name "yeemacs" user-emacs-directory))

(add-to-list 'load-path yeemacs-directory)

(require 'yeemacs-package)

(require 'yeemacs-evil)
(require 'yeemacs-misc)

(require 'yeemacs-elisp)
(require 'yeemacs-js)
(require 'yeemacs-web)

(require 'yeemacs-binding)
(require 'yeemacs-ui)
