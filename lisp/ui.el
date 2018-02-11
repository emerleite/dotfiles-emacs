;; don't show the startup help screen
(setq inhibit-startup-screen t)

;; mode line settings
(column-number-mode t)
(line-number-mode t)
(size-indication-mode t)

;; remove clutter from the UI
(tool-bar-mode -1)
;; (tooltip-mode -1)
;; (scroll-bar-mode -1)
;; (set-fringe-style -1)

;; blinking cursor
(blink-cursor-mode t)

;; disable alarm bell beep
(setq visible-bell t)

;; use Monaco font in Mac OS X
(when (eq system-type 'darwin)
  (set-default-font "Monaco"))

;; my custom theme of choice
(load-theme 'zenburn t)