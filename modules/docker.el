;; docker
(el-get-bundle dockerfile-mode
  (add-to-list 'auto-mode-alist (cons "\\.env" 'conf-mode)))
