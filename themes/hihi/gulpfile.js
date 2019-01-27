var gulp = require('gulp'),
	sass = require('gulp-sass'),
	autoprefixer = require('gulp-autoprefixer');

gulp.task('styles', function() {
	gulp.src('scss/style.scss')
		.pipe(sass({ errLogToConsole: true }))
		.pipe(autoprefixer([ 'last 2 versions', 'ie 8' ]))
		.pipe(gulp.dest('css/'));
});

gulp.task('watch', function() {
	gulp.watch('scss/**/*.scss', ['styles']);
});

gulp.task('default', ['styles', 'watch']);
