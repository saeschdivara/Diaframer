
class Rectangle extends Drawable

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

        data.left_corner = null
        data.height = null
        data.width = 0


    draw: () ->
        ###
        ###

        @canvas.draw_rectangle(@get('left_corner'), @get('width'), @get('height'))


    #####################
    ## PRIVATE METHODS ##
    #####################