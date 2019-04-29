(add-to-list 'el-get-sources
	     '(:name go-mode
		     :description "Major mode for the Go programming language"
		     :type github
		     :pkgname "dominikh/go-mode.el"
                     :after (progn
                              (add-hook 'before-save-hook #'gofmt-before-save))))
