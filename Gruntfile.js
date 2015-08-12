module.exports = function (grunt) {

    grunt.initConfig({
        concat: {
            
            frontend: {
                src: [
                    './assets/js/bootstrap.js', 
                    './assets/js/fancy_checkbox.js',  
                    './assets/js/main.js',
                    './assets/js/jquery.handler-toolkit.js', 
                    './assets/js/browser.js',  
                    './assets/js/lightbox/lightbox.js',
                    './assets/js/popup/jquery.bpopup.js', 
                    './assets/js/jquery.cookie.js', 
                    './assets/js/jquery.ba-hashchange.min.js',
                    './assets/js/jquery.total-storage.min.js', 
                    './assets/js/easyTooltip.js', 
                    './assets/js/jquery.simplePagination.js',
                    './assets/js/jquery.validate.js', 
                    './assets/js/translite/jquery.synctranslit.js', 
                    './assets/js/money/money.js',
                    './assets/js/currancy.js', 
                    './assets/js/scroll.js', 
                    './assets/js/init.js',
                    './assets/js/outWindows.js', 
                    './assets/js/resize_images.js', 
                    './assets/js/fly_feachers.js',
                    './assets/js/resize_teh.js', 
                    './assets/js/bxslider/jquery.bxslider.js', 
                    './assets/js/bxslider/bxInit.js',
                    './assets/js/button.js',
                    //'./assets/js/wp/settings.js',
                    //'./assets/js/wp/init.js',
                    './assets/js/youtube/bootstrap.youtubepopup.js',
                    // './assets/js/sticky/jquery.autofix_anything.js',
                ],
                dest: './public/javascripts/frontend.js'
            },
            
            jsWP: {
                src: [
                    './assets/js/bootstrap.js', 
                    './assets/js/fancy_checkbox.js',  
                    './assets/js/main.js',
                    './assets/js/resize_images.js',
                    './assets/js/jquery.validate.js', 
                    './assets/js/popup/jquery.bpopup.js', 
                    './assets/js/jquery.cookie.js',
                    './assets/js/jquery.ba-hashchange.min.js',
                    './assets/js/jquery.total-storage.min.js', 
                    './assets/js/browser.js',
                    './assets/js/button.js',
                    './assets/js/wp/settings.js',
                    './assets/js/wp/init.js',
                    './assets/js/fly_feachers.js',
                ],
                dest: './public/javascripts/wp.js'
            },
            
            css: {
                src: [
                    './assets/css/bootstrap.css', 
                    './assets/css/fontello.css',
                    './assets/css/lightbox.css', 
                    './assets/css/settings.css', 
                    './assets/css/all.css', 
                    './assets/css/all23032015.css',
                    './assets/css/parent.css', 
                    './assets/css/landing_fix.css', 
                    './assets/css/p2.css',
                    './assets/css/curr.css', 
                    './assets/css/jquery.bxslider.css', 
                    './assets/css/style-technological.css', 
                    './assets/css/font-size.css', 
                    './assets/css/style-fly-features.css', 
                    './assets/css/icloud/icloud.css', 
                    './assets/css/ie_fix/ie.css',
                    './assets/css/reviews/all_update.css', 
                    './assets/css/reviews/style-new-page.css',  
                    './assets/css/compatibility.css', 
                    './assets/css/404.css',
                    './assets/css/video.css',
                    // './assets/css/sticky/autofix_anything.css',
                ], 
                dest: './public/stylesheets/frontend.css'
            },
            
            cssWP: {
                src: [
                    './assets/css/bootstrap.css', 
                    './assets/css/fontello.css',
                    './assets/css/all.css', 
                    './assets/css/parent.css',
                    './assets/css/wp.css',
                    './assets/css/wp-post.css', 
                    './assets/css/wp-subscribe.css',
                    './assets/css/style-fly-features.css', 
                    './assets/css/404.css',
                ], 
                dest: './public/stylesheets/wp.css'
            }
            
        },
        uglify: {
            options: {
                mangle: false  // Use if you want the names of your functions and variables unchanged
            },
            frontend: {
                files: {
                    './public/javascripts/frontend.min.js': './public/javascripts/frontend.js',
                    './public/javascripts/wp.min.js': './public/javascripts/wp.js',
                }
            }
        },
        cssmin: {
            options: {
                shorthandCompacting: false,
                roundingPrecision: -1,
                keepSpecialComments: 0
            },
            css:{ 
                files: {
                  './public/stylesheets/frontend.min.css': ['./public/stylesheets/frontend.css'],
                  './public/stylesheets/wp.min.css': ['./public/stylesheets/wp.css'],
                }
            }
        },
        
        watch: {
            js: {
                files: ['./assets/js/*.js', './public/javascript/**/*.js'],
                tasks: ['concat', 'uglify'],
                options: {
                    livereload: true
                }
            },
            
            css: {
                files: ['./assets/css/**/*.css', './assets/css/*.css'],
                tasks: ['concat', 'cssmin'],
                options: {
                    livereload: true
                }
            }
            
//            less: {
//                files: ['./public/assets/css/*.less', './public/assets/css/**/*.css', './public/assets/css/*.css'],
//                tasks: ['less:production'],
//                options: {
//                    livereload: true
//                }
//            },
        },
        
        // @TODO: add awesome fonts copy task
    });

    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-concat-css');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-less');
    
    // grunt.registerTask('default', ['concat', 'uglify', 'less']);
    
    grunt.registerTask('default', ['concat', 'uglify', 'cssmin']);
};