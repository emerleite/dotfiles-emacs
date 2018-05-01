(el-get-bundle helm-projectile)

(add-to-list 'el-get-sources
	     '(:name helm-flx
		     :description "Flx-based fuzzy sorting for helm."
		     :type github
		     :pkgname "PythonNut/helm-flx"
		     :depends (helm flx)))
