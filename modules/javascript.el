(add-to-list 'el-get-sources
	     '(:name js2-mode
                     :after (progn
                              (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
                              (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
                              (add-to-list 'auto-mode-alist '("\\.json?\\'" . js2-jsx-mode))
                              (setq-default js2-basic-offset 2)
                              (setq js2-strict-missing-semi-warning nil)
                              (setq js2-missing-semi-one-line-override nil))))
