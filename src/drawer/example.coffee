
class ExampleDrawer extends AbstractDrawer

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


    draw_cross: () ->
        ###
        ###

        @canvas.draw_line(
            new Point(20, 20),
            new Point(300, 300)
        )

        @canvas.draw_line(
            new Point(20, 300),
            new Point(300, 20)
        )


    #####################
    ## PRIVATE METHODS ##
    #####################