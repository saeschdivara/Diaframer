
class Line extends Drawable

    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: () ->
        ###
        ###

        super


    draw: () ->
        ###
        ###

        @canvas.draw_line(
            @get('start_point'),
            @get('end_point')
        )


    #####################
    ## PRIVATE METHODS ##
    #####################