(setq emacs-root-dir (expand-file-name "~/.emacs.d"))

(push "/usr/local/bin" exec-path)
(add-to-list 'load-path (expand-file-name "./lisp/" emacs-root-dir))

;; Server
(load "server-init")

;; Langages mode
(load "packages")

;; Editor
(load "editor")

;; UI
(load "ui")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(nerd-icons-dired dired-sidebar elixir-mode projectile typescript-mode elixir-mode company lsp-ui lsp-mode org-roam magit go-mode evil eglot dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
