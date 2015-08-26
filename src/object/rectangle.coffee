
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


    get_connection_points: () ->
        ###
        ###

        corner_points = []

        # Left top we already know
        left_top_corner = @get('left_corner')

        # Find the middle of the edges
        middle_x = left_top_corner.x + (@get('width') / 2.0)
        top_edge_middle_point = new Point(middle_x, left_top_corner.y)
        corner_points.push(top_edge_middle_point)

        middle_y = left_top_corner.y + (@get('height') / 2.0)
        right_edge_middle_point = new Point(left_top_corner.x + @get('width'), middle_y)
        corner_points.push(right_edge_middle_point)

        bottom_edge_middle_point = new Point(middle_x, left_top_corner.y + @get('height'))
        corner_points.push(bottom_edge_middle_point)

        left_edge_middle_point = new Point(left_top_corner.x, middle_y)
        corner_points.push(left_edge_middle_point)


        return corner_points


    draw: () ->
        ###
        ###

        @canvas.draw_rectangle(@get('left_corner'), @get('width'), @get('height'))


    #####################
    ## PRIVATE METHODS ##
    #####################