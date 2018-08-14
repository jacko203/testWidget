using Toybox.WatchUi as Ui;
using Toybox.Lang;

class testWidgetMainView extends Ui.View {
	var myShapes;
	var count;
	var counter;
	var text;
	var cur_text;

    function initialize() {
    	counter = 0;
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
    	count_text.setText(counter.toString());

        
        View.onUpdate(dc);
   		//This redraws the layout
        	 
		// if doing any dc drawing would need to do now after View.onUpdate
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }
    
    function doLapButton() {
    	if (counter == 0) { 
    		return false;// go back
    	}
    	
    	else {	
    		counter = 0;
    	
    	        System.println("MV lap button...");
    	        WatchUi.requestUpdate();
    	    	return true;
    	    	}
    }
    
    function doSelectButton() {
    	counter++;
    	WatchUi.requestUpdate();
    }

}
