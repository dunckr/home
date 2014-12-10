'use strict';

module.exports = function(grunt) {

    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    grunt.initConfig({
        browserify: {
            build: {
                src: ['app/coffee/**/*.js'],
                dest: 'app/js/main.js'
            }
        },
        watch: {
            //css: {
            //files: ['assets/sass/**/*'],
            //tasks: ['compass']
            //},
            js: {
                files: ['assets/coffee/**/*.coffee'],
                tasks: ['browserify']
            },
            options: {
                livereload: true
            }
        },
        //watch: {
        //browserify: {
        //files: ['public/app/**/*.js'],
        //tasks: ['browserify'],
        //}
        //}
    });

    // Default task(s).
    grunt.registerTask('default', ['browserify']);
};
