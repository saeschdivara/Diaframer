
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

        @_objects = []


    ####################
    ## CANVAS OBJECTS ##
    ####################

    add_object: (obj) ->
        ###
        ###

        @_objects.push(obj)


    render_all: () ->
        ###
        ###

        for obj in @_objects
            obj.draw()


    ########################
    ## LINE DRAWING FUNCS ##
    ########################

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


    ########################
    ## RECTANGLE DRAWING  ##
    ########################

    draw_rectangle: (left_corner_point, width, height) ->
        ###
        ###

        @context.beginPath()
        @context.rect(left_corner_point.x, left_corner_point.y, width, height)
        @context.stroke()


    ########################
    ## OBJECT CONNECTIONS ##
    ########################

    connect: (obj1, obj2) ->
        ###
        ###

        connection_points1 = obj1.get_connection_points()
        connection_points2 = obj2.get_connection_points()

        nearest_points = @find_nearest_points(connection_points1, connection_points2)
        @draw_line.apply(@, nearest_points)


    find_nearest_points: (points1, points2) ->
        ###
        ###

        lowest_diff = 1000000
        nearest_points = []

        # We need to find out which diff is more important
        if points1.length >= 1 and points2.length >= 1
            x_diff = Math.abs(points1[0].x - points2[0].x)
            y_diff = Math.abs(points1[0].y - points2[0].y)

            is_bigger_x_diff = x_diff > y_diff
            is_bigger_y_diff = x_diff < y_diff


        for p1 in points1

            for p2 in points2

                x_diff = Math.abs(p1.x - p2.x)
                y_diff = Math.abs(p1.y - p2.y)

                if is_bigger_x_diff
                    total_diff = x_diff

                else if is_bigger_y_diff
                    total_diff = y_diff

                else
                    total_diff = x_diff + y_diff

                if total_diff < lowest_diff
                    lowest_diff = total_diff
                    nearest_points = [
                        p1, p2
                    ]

        return nearest_points

    #####################
    ## PRIVATE METHODS ##
    #####################