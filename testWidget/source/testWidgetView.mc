using Toybox.WatchUi as Ui;
using Toybox.Lang;

class testWidgetView extends Ui.View {
	var myShapes;
	var count;
	var counter;
	var text;
	var cur_text;

    function initialize() {
    	
    	cur_text = "Press start to begin";
        View.initialize();
        
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
    	
    	var count_text = View.findDrawableById("rate");
    	count_text.setText(cur_text); 
    
        View.onUpdate(dc);
        	 
        // Call the parent onUpdate function to redraw the layout
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }
   
    
    function doSelectButton() {
    	var newView = new testWidgetMainView();
    	Ui.pushView(newView, new testWidgetMainViewDelegate(newView), SLIDE_IMMEDIATE);
    }

}
