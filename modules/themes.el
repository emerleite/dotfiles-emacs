(add-to-list 'el-get-sources
	     '(:name zenburn-theme
		     :type github
		     :pkgname "emerleite/zenburn-emacs"
		     :description "The Zenburn colour theme ported to Emacs"
		     :url "https://github.com/emerleite/zenburn-emacs"
		     :post-init (add-to-list 'custom-theme-load-path
				 default-directory)))
