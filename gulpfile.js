const gulp = require('gulp'),
      sass = require('gulp-sass'),
      postcss = require('gulp-postcss'),
      autoprefixer = require('gulp-autoprefixer'),
      uglify = require('gulp-uglify'),
      imagemin = require('gulp-imagemin'),
      pngquant = require('imagemin-pngquant'),
      sourcemaps = require('gulp-sourcemaps');



const path = {
    build: {
        html: 'build/',
        js: 'build/js/',
        css: 'build/css/',
        img: 'public/images/',
        fonts: 'build/fonts/'
    },

    src: {
        js: 'src/js/scripts.js',
        style: 'src/style/styles.css',
        img: 'public/images/**/*.*',
        fonts: 'src/fonts/**/*.*'
    },

    clean: './build'
};



gulp.task('images', function () {
    gulp.src('public/images/404/**/*.{jpg,jpeg,png}')
        .pipe(imagemin({
            progressive: true,
            svgoPlugins: [{removeViewBox: false}],
            use: [pngquant()],
            interlaced: true
        }))
        .pipe(gulp.dest('public/images/'))
});



gulp.task('sass', function () {
  return gulp.src('./assets/css/frontend.min.scss')
      .pipe(sourcemaps.init())
      .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
      .pipe(autoprefixer('last 10 version'))
      .pipe(sourcemaps.write())
      .pipe(gulp.dest('./public/stylesheets/'));
});



gulp.task('uglify_js', function() {
    return gulp.src('./assets/**/*.js')
        .pipe(uglify())
        .pipe(gulp.dest('/public/javascripts/frontend.js'));
});



gulp.task('sass:watch', function () {
    gulp.watch('./assets/css/**/*.scss', ['sass']);
});



gulp.task('default', function () { console.log('Hello Gulp!') });



