;; Customizations relating to editing a buffer.

;; Key binding to use "hippie expand" for text autocompletion
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Lisp-friendly hippie expand
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Interactive search key bindings. By default, C-s runs
;; isearch-forward, so this swaps the bindings.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;;
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

;; When you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
;; http://www.emacswiki.org/emacs/SavePlace
(require 'saveplace)
(setq-default save-place t)
;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "places"))

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))
(setq auto-save-default nil)


;; comments
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

;; yay rainbows!
(global-rainbow-delimiters-mode t)

;; use 2 spaces for tabs
(defun die-tabs ()
  (interactive)
  (set-variable 'tab-width 2)
  (mark-whole-buffer)
  (untabify (region-beginning) (region-end))
  (keyboard-quit))

;; fix weird os x kill error
(defun ns-get-pasteboard ()
  "Returns the value of the pasteboard, or nil for unsupported formats."
  (condition-case nil
      (ns-get-selection-internal 'CLIPBOARD)
    (quit nil)))

(setq electric-indent-mode nil)

;; custom file extensions
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(add-to-list 'auto-mode-alist '("\\.ats\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es5\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))

(eval-after-load 'js2-mode '(require 'setup-js2-mode))


;; turn on spellcheck for markdown
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; kate-like line wrapping:
;; done by enabling adaptive-wrap minor mode in all buffers
;; globalized minor mode is required for this (hooks don't work)
(defun turn-on-adaptive-wrap-prefix-mode (&optional arg)
    (interactive)
    (adaptive-wrap-prefix-mode (or arg 1)))
(defun turn-off-adaptive-wrap-prefix-mode (&optional arg)
    (interactive)
    (adaptive-wrap-prefix-mode (or arg -1)))
(defun adaptive-wrap-initialize ()
    (unless (minibufferp)
        (progn
            (adaptive-wrap-prefix-mode 1)
            (setq word-wrap t))))
(define-globalized-minor-mode adaptive-wrap-mode
    adaptive-wrap-prefix-mode adaptive-wrap-initialize)
(adaptive-wrap-mode)

;; js2 mode
;;(add-hook 'js-mode-hook 'js2-minor-mode)
;;(add-hook 'js2-mode-hook 'ac-js2-mode)

;; remove trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)
