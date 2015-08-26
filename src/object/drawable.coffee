
class Drawable
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: (canvas) ->
        ###
        ###

        @canvas = canvas

        @data = {}

        rest_arguments = Array.prototype.slice.call(arguments, 1)

        for arg in rest_arguments

            # We only accept objects at the moment
            if typeof arg == 'object'

                # Iterate over all keys and their values
                for key, value of arg
                    @set(key, value)



    get: (key) ->
        ###
        ###

        @data[key]


    set: (key, value) ->
        ###
        ###

        @data[key] = value


    get_connection_points: () ->
        ###
        ###

        throw new Error('This method has to be implemented')


    draw: () ->
        ###
        ###

        throw new Error('This method has to be implemented')


    #####################
    ## PRIVATE METHODS ##
    #####################