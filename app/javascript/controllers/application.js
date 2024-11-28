import { Application } from "@hotwired/stimulus";
import "@rails/ujs";

const application = Application.start();

// Configure Stimulus development experience
application.debug = true;
window.Stimulus = application;

export { application };
