Boostrap Tag inputs examples in Rails 4 form. The example allows to create tasks with easy way to populate.

1rst selector (title) using Tokenfield for Bootstrap (http://sliptree.github.io/bootstrap-tokenfield/)

2nd selector (status) and 3rd selector (Employee Email) using MagicSuggest (http://nicolasbize.com/magicsuggest/)

After downloading, do not forget to use the following commands in terminal:

$ bundle
$ rake db:migrate
$ rake db:seed  (NB: this step to prepopulate employee and status list)
$ rails s

Thks Stefan694 (https://github.com/stefan694) for his help and advice.


feel free to improve!

PS: CSS for Tokenfield has been modified for adjusting to MagicSuggest.
MagicSuggest javascript has been modified to better fit with rails form (removal of JPARSE an removal of [] format for name).
