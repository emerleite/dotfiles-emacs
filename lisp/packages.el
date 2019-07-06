;; load el-get
(add-to-list 'load-path (expand-file-name "el-get/el-get" emacs-root-dir))

(require 'dired-x)
(setq-default dired-omit-files-p t) ; Buffer-local variable

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

;; load all .el files inside `modules-dir`
(setq modules-dir (expand-file-name "modules" emacs-root-dir))
(mapc 'load (directory-files modules-dir 't "^[^#].*el$"))

;; install all missing packages via el-get
(el-get 'sync (mapcar 'el-get-source-name el-get-sources))

;; enable company-mode in all buffers
(add-hook 'after-init-hook 'global-company-mode)

