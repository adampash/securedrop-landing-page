gulp = require 'gulp'
browserSync = require 'browser-sync'
reload = browserSync.reload
sass = require 'gulp-ruby-sass'

gulp.task 'serve', ->
  browserSync
    server:
      baseDir: 'app'

  gulp.watch ['*.html', '*.css', '*.js'], cwd: 'app', reload
  # gulp.watch('src/*.sass', ['sass'], cwd: 'app')

# gulp.task 'sass', ->
#   console.log __dirname
#   sass("#{__dirname}/src/*.sass")
#     .pipe(gulp.dest('css'))
#     .pipe(reload(stream: true))

gulp.task 'default', ->


