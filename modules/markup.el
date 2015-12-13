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
                              (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
                              (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
                              (add-hook 'sgml-mode-hook 'web-mode))))
