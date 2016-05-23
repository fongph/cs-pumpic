var gulp = require('gulp');
var stylus = require('gulp-stylus');
var autoprefixer = require('gulp-autoprefixer');

gulp.task('one', function () {
  gulp.src('assets/styl/all.styl')
      .pipe(stylus({
        compress: true
      }))
    .pipe(autoprefixer())
    .pipe(gulp.dest('public/dist/css'));

});


// Действия по умолчанию
gulp.task('default', ['one'], function(){
gulp.run('one');
});


// Отслеживаем изменения в файлах
gulp.task('watch', function(){
  gulp.watch("./assets/styl/**/*.styl", function(event){
    gulp.run('one');
  });
});