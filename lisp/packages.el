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

;; Programming languages
(use-package elixir-mode
  :ensure t)

(use-package go-mode
  :ensure t)

(use-package typescript-mode
  :ensure t)

(use-package org-roam
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
	 (js-mode . lsp))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

(setq package-install-upgrade-built-in t)
