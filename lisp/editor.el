;; set your desired tab width
(setq-default indent-tabs-mode nil)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight matching parens
(show-paren-mode t)

;; highlight current line
(add-hook 'after-change-major-mode-hook 'hl-line-mode)

;; enable interactive do
(ido-mode t)

;; disable auto-save capabilities
(setq make-backup-files nil)
(setq auto-save-default nil)

;;magit
(setq magit-push-always-verify nil)