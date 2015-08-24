

class Diaframer
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

        @canvas = new Canvas(canvas_element)

        # Drawer
        @uml = null
        @example = null


    getUmlDrawer: () ->
        ###
        ###

        if @uml?
            return @uml
        else
            @uml = new UmlDrawer(@canvas)
            return @uml


    getExampleDrawer: () ->
        ###
        ###

        if @example?
            return @example
        else
            @example = new ExampleDrawer(@canvas)
            return @example


    #####################
    ## PRIVATE METHODS ##
    #####################



#############################
## ALL APPLICATION EXPORTS ##
#############################

window.Diaframer = Diaframer