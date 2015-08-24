
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


    #####################
    ## PRIVATE METHODS ##
    #####################