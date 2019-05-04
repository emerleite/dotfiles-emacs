(add-to-list 'el-get-sources
	     '(:name markdown-mode))

(add-to-list 'el-get-sources
	     '(:name textile-mode))

(add-to-list 'el-get-sources
	     '(:name web-mode
		     :after (progn
                              (add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
                              (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
                              (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
                              (add-hook 'web-mode-hook
                                        (lambda ()
                                          (setq web-mode-script-padding 4)
                                          (setq web-mode-code-indent-offset 2)
                                          (setq web-mode-attr-indent-offset 2)
                                          (setq web-mode-markup-indent-offset 2)))
                              (add-hook 'sgml-mode-hook 'web-mode))))
