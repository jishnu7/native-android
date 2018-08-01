package com.tealeaf;
import android.webkit.JavascriptInterface;
import com.tealeaf.event.OverlayEvent;

public class BrowserInterface {

	public BrowserInterface() {
	}

	@JavascriptInterface
	public void log(String message) {
		logger.log("{overlay} ", message);
	}

	@JavascriptInterface
	public void sendMessage(String event) {
		logger.log("{overlay} Event: ", event);
		EventQueue.pushEvent(new OverlayEvent(event));
	}
}
