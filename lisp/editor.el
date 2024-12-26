;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; enlarge and shrink windows
(global-set-key (kbd "C-x <up>")    'shrink-window)
(global-set-key (kbd "C-x <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-x <down>")  'enlarge-window)
(global-set-key (kbd "C-x <left>")  'shrink-window-horizontally)

;; auto-add closing pairs (parens, quotes, etc)
(electric-pair-mode t)

;; highlight matching parens
(show-paren-mode t)

;; highlight current line
(add-hook 'after-change-major-mode-hook 'hl-line-mode)
