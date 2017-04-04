var gulp = require('gulp');
var stylus = require('gulp-stylus');
var autoprefixer = require('gulp-autoprefixer');
var browserSync = require('browser-sync');

gulp.task('browser-sync', function() {
  browserSync({
    server: {
      baseDir: "./",
      index: "index.html"
    },
    port:3001,
    open: true,
    notify: false
  });
});

gulp.task('html', function(){
	gulp.src('./index.html')
			.pipe(browserSync.reload({stream:true}));
});

gulp.task('one', function () {
  gulp.src('assets/styl/all.styl')
      .pipe(stylus({
        compress: true
      }))
    .pipe(autoprefixer())
    .pipe(gulp.dest('public/dist/css'));

});

gulp.task('one', function () {
  gulp.src('assets/styl/*.styl')
      .pipe(stylus({
        compress: true
      }))
      .pipe(autoprefixer())
      .pipe(gulp.dest('public/dist/css'))
			.pipe(browserSync.reload({stream: true}))
});

// Действия по умолчанию
gulp.task('default', ['one', 'browser-sync', 'watch']);


// Отслеживаем изменения в файлах
gulp.task('watch', function(){
  gulp.watch("./assets/styl/**/*.styl", ['one']);
	gulp.watch('./index.html', ['html']);
});