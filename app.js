'use strict'

var gulp = require('gulp');
var concat = require('gulp-concat');
var minifyCSS = require('gulp-minify-css');
var uglify = require('gulp-uglify');

var paths = {
    styles: {
        src: 'public/assets/css/*.css',
        dest: '_dev/public/assets/css/'
    },
    scripts: {
        src: 'public/assets/js/*.js',
        dest: '_dev/public/assets/js/'
    }
};

try {
  
//  gulp.src(paths.scripts.src)
//  .pipe(uglify())
//  .pipe(concat('main.js'))
//  .pipe(gulp.dest(paths.scripts.dest));

gulp.src(paths.styles.src)
 .pipe(minifyCSS())
 .pipe(concat('main.css'))
 .pipe(gulp.dest(paths.styles.dest));


} catch (error) {
 console.error(error)   
}
