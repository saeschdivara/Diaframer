
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


    draw_line: (point1, point2) ->
        ###
        ###

        @context.beginPath()
        @context.moveTo(point1.x, point1.y)
        @context.lineTo(point2.x, point2.y)
        @context.stroke()


    draw_vertical_line: (point1, length) ->
        ###
        ###

        @draw_line(point1, new Point(point1.x, point1.y + length))


    draw_horizontal_line: (point1, length) ->
        ###
        ###

        @draw_line(point1, new Point(point1.x + length, point1.y))


    #####################
    ## PRIVATE METHODS ##
    #####################