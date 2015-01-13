;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; http://stackoverflow.com/questions/26108655/error-updating-emacs-packages-failed-to-download-gnu-archive
(setq package-check-signature nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)
