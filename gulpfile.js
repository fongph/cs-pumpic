const gulp = require('gulp'),
    sass = require('gulp-sass'),
    postcss = require('gulp-postcss'),
    autoprefixer = require('gulp-autoprefixer'),
    cssmin = require('gulp-cssmin'),
    rename = require('gulp-rename'),
    uglify = require('gulp-uglify'),
    pump = require('pump'),
    imagemin = require('gulp-imagemin'),
    pngquant = require('imagemin-pngquant'),
    sourcemaps = require('gulp-sourcemaps'),
    concat = require('gulp-concat'),
    browserSync = require('browser-sync').create(),
    uncss = require('gulp-uncss'),
    reload = browserSync.reload;



const project = "pumpic.dev";



const path = {
    dev: {
        tpl: './templates/**/*.tpl',
        js: './assets/js/**/*.js',
        js_wp: './public/javascripts/wp.js',
        sass: './assets/css/frontend.scss',
        sass_wp:'./public/stylesheets/wp.scss',
        sass_watch: './assets/css/**/*.scss',
        img: './public/images/**/*'
    },

    public: {
        js: 'public/javascripts/',
        style: 'public/stylesheets/',
        img: 'public/images/'
    }
};


gulp.task('images-min', function () {
    gulp.src(path.dev.img)
        .pipe(imagemin({
            progressive: true,
            svgoPlugins: [{removeViewBox: false}],
            use: [pngquant()],
            interlaced: true
        }))
        .pipe(gulp.dest(path.public.img))
});



gulp.task('sass', function () {
    return gulp.src(path.dev.sass)
        .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
        .pipe(postcss([ require('postcss-flexibility') ]))
        .pipe(autoprefixer('last 10 version'))
        .pipe(cssmin())
        .pipe(rename({suffix: '.min'}))
        .pipe(reload({stream: true}))
        .pipe(gulp.dest(path.public.style));
});



gulp.task('sass-wp', function () {
    return gulp.src(path.dev.sass_wp)
        .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
        .pipe(autoprefixer('last 10 version'))
        .pipe(cssmin())
        .pipe(rename({suffix: '.min'}))
        .pipe(reload({stream: true}))
        .pipe(gulp.dest(path.public.style));
});



gulp.task('sass-dev', function () {
    return gulp.src('./assets/css/frontend.scss')
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(sourcemaps.write())
        .pipe(rename({suffix: '.min'}))
        .pipe(reload({stream: true}))
        .pipe(gulp.dest(path.public.style));
});




gulp.task('sass-wp-dev', function () {
    return gulp.src(path.dev.sass_wp)
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(sourcemaps.write())
        .pipe(rename({suffix: '.min'}))
        .pipe(reload({stream: true}))
        .pipe(gulp.dest(path.public.style));
});



gulp.task('js-dev', function() {
    return gulp.src(path.dev.js)
        .pipe(sourcemaps.init())
        .pipe(concat('frontend.js'))
        .pipe(rename({suffix: '.min'}))
        .pipe(sourcemaps.write())
        .pipe(reload({stream: true}))
        .pipe(gulp.dest(path.public.js));
});



gulp.task('js-min', function() {
    return gulp.src(path.dev.js)
        .pipe(concat('frontend.js'))
        .pipe(rename({suffix: '.min'}))
        .pipe(uglify({compress: true}))
        .pipe(reload({stream: true}))
        .pipe(gulp.dest(path.public.js));
});

gulp.task('js-min-wp', function() {
    return gulp.src(path.dev.js_wp)
        .pipe(rename({suffix: '.min'}))
        .pipe(uglify({compress: true}))
        .pipe(reload({stream: true}))
        .pipe(gulp.dest(path.public.js));
});



gulp.task('browser-sync', function() {
    browserSync.init({
        proxy: project
    });
});



gulp.task('watch', function() {
    gulp.watch(path.dev.sass_watch, ['sass-dev']);
    gulp.watch(path.dev.sass_wp, ['sass-wp-dev']);
    gulp.watch(path.dev.js, ['js-dev']);
    //gulp.watch(path.dev.tpl).on('change', browserSync.reload)
});

gulp.task('uncss', function () {
    return gulp.src('123.css')
        .pipe(uncss({
            html: ['http://pumpic.dev/amp/best-free-parental-control-apps-for-android.html']
        }))
        .pipe(gulp.dest('out'));
});


gulp.task('dev', ['watch']);

gulp.task('default', ['sass', 'sass-wp', 'js-min']);
