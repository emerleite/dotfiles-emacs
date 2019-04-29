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

;;helm
(helm-projectile-on)

(helm-flx-mode +1)

(setq helm-flx-for-helm-find-files t ;; t by default
      helm-flx-for-helm-locate t) ;; nil by default

(setq helm-mode-fuzzy-match t
      helm-recentf-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-completion-in-region-fuzzy-match t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x p f") 'helm-projectile-find-file)
(global-set-key (kbd "C-x p d") 'helm-projectile-find-dir)
(global-set-key (kbd "C-x p g") 'helm-projectile-grep)
(global-set-key (kbd "C-x g g") 'helm-grep-do-git-grep)
