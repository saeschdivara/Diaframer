
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


    draw_two_connected_boxes: () ->
        ###
        ###

        rect1 = @canvas.draw_rectangle(
            new Point(20, 20),
            300, 200
        )

        rect2 = @canvas.draw_rectangle(
            new Point(70, 320),
            300, 200
        )

        @canvas.connect(rect1, rect2)


    #####################
    ## PRIVATE METHODS ##
    #####################