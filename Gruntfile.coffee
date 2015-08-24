module.exports = (grunt) ->

    source_path = 'src/'

    app_source_paths = [
        source_path + '*.coffee'
        source_path + '**/*.coffee'
    ]

    grunt.initConfig(
        pkg: grunt.file.readJSON('package.json'),

        coffee:
            compile_app:
                options:
                    join: true,
                    sourceMap: true

                files:

                    ####################################################################
                    # APP SECTION
                    ####################################################################
                    'build/diaframer.js': app_source_paths



        uglify:
            options:
                banner: '/*! <%= pkg.name %> - v<%= pkg.version %> - ' +
                    '<%= grunt.template.today("yyyy-mm-dd")  %> copyright by <%= pkg.author %> */ \n',


                mangle: true,
                beautify: false,
                compress:
                    drop_console: true


            dist:
                files:

                    ####################################################################
                    # EDITOR APP SECTION
                    ####################################################################
                    'dist/diaframer.min.js': [
                        'build/diaframer.js'
                    ],


        watch:
            coffee_app:
                files: [
                    app_source_paths
                ]

                tasks: 'coffee:compile_app'


    )

    grunt.loadNpmTasks('grunt-contrib-uglify')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-watch')

    ########################
    ## COFFEE WATCH TASKS ##
    ########################
    grunt.registerTask('watch-app', ['watch:coffee_app'])

    grunt.registerTask('default', ['coffee', 'uglify'])

