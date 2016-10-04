

var gulp = require('gulp'),
    source = require('vinyl-source-stream'),
    rename = require('gulp-rename'),
    browserify = require('browserify'),
    babelify = require('babelify'),
    es = require('event-stream');

gulp.task('default', function () {

    var files = [
        './Scripts/HelloAddIn.jsx',
        './Scripts/App.jsx'
    ];

    var tasks = files.map(function (entry) {
        return browserify({ entries: [entry] })
         .transform(babelify, { presets: "react" })
         .bundle()
         .pipe(source(entry))
         .pipe(rename({
             dirname: './',
             extname: '.js'
         }))
         .pipe(gulp.dest('./Scripts/build/'));
    });

    return es.merge.apply(null, tasks);

});