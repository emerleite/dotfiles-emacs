;; file modes
(el-get-bundle s)

(el-get-bundle flycheck)

(el-get-bundle memoize)

(el-get-bundle jdee)

(el-get-bundle terraform-mode)

(el-get-bundle ac-php)

(el-get-bundle groovy-emacs-mode)

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(add-to-list 'el-get-sources
	     '(:name multiple-cursors
                     :after (progn
                              (global-set-key (kbd "C-c *") 'mc/edit-lines)
                              (global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
                              (global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
                              (global-set-key (kbd "C-c .") 'mc/mark-all-like-this))))

(add-to-list 'el-get-sources
             '(:name makey
                     :type git
                     :url "https://github.com/mickeynp/makey"))
