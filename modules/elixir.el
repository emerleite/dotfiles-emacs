(add-to-list 'el-get-sources
	     '(:name elixir
		     :type github
		     :pkgname "elixir-lang/emacs-elixir"
		     :description "Elixir language's major mode for Emacs"
		     :website "http://github.com/elixir-lang/emacs-elixir"))

(add-to-list 'el-get-sources
             '(:name alchemist
                     :description "Elixir Tooling Integration Into Emacs"
                     :type github
                     :pkgname "tonini/alchemist.el"
                     :depends (elixir dash company-mode pkg-info)))

