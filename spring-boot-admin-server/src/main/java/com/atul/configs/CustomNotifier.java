package com.atul.configs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import de.codecentric.boot.admin.event.ClientApplicationEvent;
import de.codecentric.boot.admin.notify.AbstractEventNotifier;
import de.codecentric.boot.admin.notify.LoggingNotifier;

public class CustomNotifier extends AbstractEventNotifier {
	private static final Logger LOGGER = LoggerFactory.getLogger(LoggingNotifier.class);

	@Override
	protected void doNotify(ClientApplicationEvent event) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
