'use strict';

module.exports = function(grunt) {

    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    grunt.initConfig({
        browserify: {
            build: {
                src: ['app/coffee/**/*.coffee'],
                dest: 'app/js/main.js'
            }
        },
        express: {
            all: {
                options: {
                    port: 9000,
                    hostname: "0.0.0.0",
                    bases: ['app'],
                    livereload: true
                }
            }
        },
        watch: {
            all: {
                files: 'index.html',
                options: {
                    livereload: true
                },
            },
            js: {
                files: ['app/coffee/**/*.coffee'],
                tasks: ['browserify']
            }
        }
    });

    grunt.registerTask('default', ['browserify', 'express', 'watch']);
};
