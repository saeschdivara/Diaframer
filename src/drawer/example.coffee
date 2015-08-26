
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

        line1 = new Line(@canvas,
            start_point: new Point(20, 20)
            end_point: new Point(300, 300)
        )

        line2 = new Line(@canvas,
            start_point: new Point(20, 300)
            end_point: new Point(300, 20)
        )

        @canvas.add_object(line1)
        @canvas.add_object(line2)

        @canvas.render_all()


    draw_two_connected_boxes: () ->
        ###
        ###

        rect1 = new Rectangle(@canvas)
        rect1.set('left_corner', new Point(20, 20))
        rect1.set('width', 300)
        rect1.set('height', 200)

        rect2 = new Rectangle(@canvas)
        rect2.set('left_corner', new Point(480, 170))
        rect2.set('width', 300)
        rect2.set('height', 200)

        @canvas.add_object(rect1)
        @canvas.add_object(rect2)

        @canvas.render_all()

        @canvas.connect(rect1, rect2)


    #####################
    ## PRIVATE METHODS ##
    #####################