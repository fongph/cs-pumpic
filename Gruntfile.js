module.exports = function (grunt) {

    grunt.initConfig({
        concat: {
            frontend: {
                src: [
                    './public/assets/js/bootstrap.js', 
                    './public/assets/js/fancy_checkbox.js',  
                    './public/assets/js/main.js',
                    './public/assets/js/jquery.handler-toolkit.js', 
                    './public/assets/js/browser.js',  
                    './public/assets/js/lightbox/lightbox.js',
                    './public/assets/js/popup/jquery.bpopup.js', 
                    './public/assets/js/jquery.cookie.js', 
                    './public/assets/js/jquery.ba-hashchange.min.js',
                    './public/assets/js/jquery.total-storage.min.js', 
                    './public/assets/js/easyTooltip.js', 
                    './public/assets/js/jquery.simplePagination.js',
                    './public/assets/js/jquery.validate.min.js', 
                    './public/assets/js/translite/jquery.synctranslit.js', 
                    './public/assets/js/money/money.min.js',
                    './public/assets/js/currancy.js', 
                    './public/assets/js/scroll.js', 
                    './public/assets/js/init.js',
                    './public/assets/js/outWindows.js', 
                    './public/assets/js/resize_images.js', 
                    './public/assets/js/fly_feachers.js',
                    './public/assets/js/resize_teh.js', 
                    './public/assets/js/bxslider/jquery.bxslider.js', 
                    './public/assets/js/bxslider/bxInit.js',
                ],
                dest: './public/javascripts/frontend.js'
            },
            
            css: {
                src: [
                    './public/assets/css/bootstrap.css', 
                    './public/assets/css/fontello.css',
                    './public/assets/css/lightbox.css', 
                    './public/assets/css/settings.css', 
                    './public/assets/css/all.css', 
                    './public/assets/css/all23032015.css',
                    './public/assets/css/parent.css', 
                    './public/assets/css/landing_fix.css', 
                    './public/assets/css/p2.css',
                    './public/assets/css/curr.css', 
                    './public/assets/css/jquery.bxslider.css', 
                    './public/assets/css/style-technological.css', 
                    './public/assets/css/font-size.css', 
                    './public/assets/css/style-fly-features.css', 
                    './public/assets/css/icloud/icloud.css', 
                    './public/assets/css/ie_fix/ie.css',
                    './public/assets/css/reviews/all_update.css', 
                    './public/assets/css/reviews/style-new-page.css',  
                    './public/assets/css/compatibility.css', 
                    './public/assets/css/404.css',
                ], 
                dest: './public/stylesheets/frontend.css'
            }
        },
        uglify: {
            options: {
                mangle: false  // Use if you want the names of your functions and variables unchanged
            },
            frontend: {
                files: {
                    './public/javascripts/frontend.min.js': './public/javascripts/frontend.js'
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
                  './public/stylesheets/frontend.min.css': ['./public/stylesheets/frontend.css']
                }
            }
        },
        
        watch: {
            js: {
                files: ['./public/assets/js/*.js', './public/javascript/**/*.js'],
                tasks: ['concat', 'uglify'],
                options: {
                    livereload: true
                }
            },
            
            css: {
                files: ['./public/assets/css/**/*.css', './public/assets/css/*.css'],
                tasks: ['cssmin'],
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