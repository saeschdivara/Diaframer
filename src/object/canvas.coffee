
class Canvas
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: (canvas_element) ->
        ###
        ###

        @canvas = canvas_element
        @context = @canvas.getContext('2d')


    #####################
    ## PRIVATE METHODS ##
    #####################