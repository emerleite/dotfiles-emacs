
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq emacs-root-dir (expand-file-name "~/.emacs.d"))

(push "/usr/local/bin" exec-path)
(add-to-list 'load-path (expand-file-name "./lisp/" emacs-root-dir))

(load "functions")
(load "env")
(load "packages")
(load "editor")
(load "ui")
(load "window")
(load "server-init")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (queue rainbow-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
