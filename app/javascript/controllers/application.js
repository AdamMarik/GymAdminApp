import { Application } from "@hotwired/stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";

// Import Rails UJS for handling DELETE, PATCH, PUT links and forms
import Rails from "@rails/ujs";

// Start Rails UJS
Rails.start();

// Initialize the Stimulus application
const application = Application.start();

// Load all the controllers from the controllers directory
const context = require.context("controllers", true, /.js$/);
application.load(definitionsFromContext(context));

// Optional: Configure Stimulus for development (e.g., debugging)
application.debug = false;
window.Stimulus = application;

export { application };
