(add-to-list 'el-get-sources
	     '(:name js2-mode
                     :after (progn
                              (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
                              (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
                              (add-to-list 'auto-mode-alist '("\\.json?\\'" . js2-jsx-mode))
                              (add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
                              (setq-default js2-basic-offset 2)
                              (setq js2-strict-missing-semi-warning nil)
                              (setq js2-missing-semi-one-line-override nil))))

;;; rjsx-mode

(el-get-bundle rjsx-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))

(add-hook 'rjsx-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil) ;;Use space instead of tab
            (setq js-indent-level 2) ;;space width is 2 (default is 4)
            (setq js2-strict-missing-semi-warning nil))) ;;disable the semicolon warning
