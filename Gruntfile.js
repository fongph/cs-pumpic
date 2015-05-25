module.exports = function (grunt) {

    grunt.initConfig({
        concat: {
            frontend: {
                src: [
                    './public/js/bootstrap.js',
                ],
                dest: './public/javascript/frontend.js'
            },
            
            css: {
                src: [
                    './public/css/bootstrap.css.css', './public/css/fontello.css',
                    './public/css/lightbox.css',
                    './public/css/lightbox.css', 
                    './public/css/settings.css', './public/css/all.css', './public/css/all23032015.css',
                    './public/css/parent.css', './public/css/landing_fix.css', './public/css/p2.css',
                    './public/css/curr.css', './public/css/jquery.bxslider.css', './public/css/style-technological.css', 
                    './public/css/font-size.css', './public/css/icloud/icloud.css', './public/css/ie_fix/ie.css',
                    './public/css/reviews/all_update.css', './public/css/reviews/style-new-page.css',  
                    './public/css/reviews/compatibility.css', './public/css/reviews/404.css',
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
                    './public/javascript/frontend.min.js': './public/javascript/frontend.js'
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
                files: ['./public/js/*.js', './public/javascript/**/*.js'],
                tasks: ['concat', 'uglify'],
                options: {
                    livereload: true
                }
            },
            
            css: {
                files: ['./public/css/**/*.css', './public/css/*.css'],
                tasks: ['cssmin'],
                options: {
                    livereload: true
                }
            }
            
//            less: {
//                files: ['./public/css/*.less', './public/css/**/*.css', './public/css/*.css'],
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