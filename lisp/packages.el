(require 'package)

(setq package-archives '(("gnu"          . "https://elpa.gnu.org/packages/")
                         ("melpa-stable" . "https://melpa.org/packages/")))

(package-initialize)
;; (package-refresh-contents)

;; Themes
(use-package dracula-theme
  :ensure t
  :config (progn
            (load-theme 'dracula t)))

;; Editor Config
(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

;; Programming languages
(use-package elixir-mode
  :ensure t
  :hook (before-save . elixir-format))

(use-package go-mode
  :ensure t
  :hook (before-save . gofmt-before-save))

(use-package typescript-mode
  :ensure t)

(use-package org-roam
  :ensure t)

(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode))

(use-package dockerfile-mode
  :ensure t)

(use-package docker-compose-mode
  :ensure t)

(use-package pyvenv
  :ensure t)

;; LSP and extras
(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  (add-to-list 'exec-path "~/dev/support/lsp/elixir-ls/release")
  (add-to-list 'exec-path "~/go/bin")
  :hook ((elixir-mode . lsp)
	 (go-mode . lsp-deferred)
	 (typescript-mode . lsp)
	 (html-mode . lsp)
	 (js-mode . lsp)
	 (python-mode . lsp))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

;;Nerd Icons
(use-package nerd-icons :defer t)
(use-package nerd-icons-dired
  :ensure t
  :init
  (setq dired-sidebar-theme 'nerd-icons)
  :commands (nerd-icons-dired-mode)
  :hook (dired-mode . nerd-icons-dired-mode))

;; Dired sidebar
(use-package dired-sidebar
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :init
  (add-hook 'dired-sidebar-mode-hook
            (lambda ()
              (unless (file-remote-p default-directory)
                (auto-revert-mode))))
  :config
  (push 'toggle-window-split dired-sidebar-toggle-hidden-commands)
  (push 'rotate-windows dired-sidebar-toggle-hidden-commands)

  (setq dired-sidebar-subtree-line-prefix "__")
  (setq dired-sidebar-theme 'vscode)
  (setq dired-sidebar-use-term-integration t)
  (setq dired-sidebar-use-custom-font t))

(setq package-install-upgrade-built-in t)
