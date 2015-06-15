- javascript файлы находятся в assets/js/
- файлы стилей - assets/css/
- в папке public/javascripts, public/stylesheets находятся уже скомпилированные файлы, изменять их нужно только посредством компиляции.
- компиляцию выполняем инструментом grunt, запуская его с корневой директории проекта grunt. Инструмент выполняет компиляцию стилей сжатие в один файл, соединение js скриптов в один файл и их минификацию.
- также есть возможность запустить grunt в режиме слежки за файлами grunt watch. При каждом изменении файлов стиля или javascript файла будет происходить компиляция без сжатия.

## ============= GRUNT ========
1. Install components
 - grunt-concat-css
 - grunt-contrib-concat
 - grunt-contrib-cssmin
 - grunt-contrib-less
 - grunt-contrib-uglify
 - grunt-contrib-watch

terminal:

> npm install -g grunt

> npm install grunt-concat-css --save-dev
> npm install grunt-contrib-concat --save-dev
> npm install grunt-contrib-cssmin --save-dev
> npm install grunt-contrib-less --save-dev
> npm install grunt-contrib-uglify --save-dev
> npm install grunt-contrib-watch --save-dev

Run:
> grunt 
OR
> grunt watch