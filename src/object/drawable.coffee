
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


    get: (key) ->
        ###
        ###

        @data[key]


    set: (key, value) ->
        ###
        ###

        @data[key] = value


    draw: () ->
        ###
        ###

        throw new Error('This method has to be implemented')


    #####################
    ## PRIVATE METHODS ##
    #####################