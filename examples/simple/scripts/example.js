

var on_dom_loaded = function () {
    var framer = new Diaframer(document.getElementById('canvas'));
    var drawer = framer.getExampleDrawer();

    drawer.draw_cross();
};


document.addEventListener( "DOMContentLoaded", on_dom_loaded, false );