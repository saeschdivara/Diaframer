

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


    getUmlDrawer: () ->
        ###
        ###

        if @uml?
            return @uml
        else
            @uml = new UmlDrawer(@canvas)
            return @uml


    #####################
    ## PRIVATE METHODS ##
    #####################



#############################
## ALL APPLICATION EXPORTS ##
#############################

window.Diaframer = Diaframer