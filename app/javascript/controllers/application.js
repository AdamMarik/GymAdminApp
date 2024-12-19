import { Application } from "@hotwired/stimulus"
import { definitionsFromContext } from 'stimulus/webpack-helpers'

// Initialize the Stimulus application
const application = Application.start()

// Load all the controllers from the controllers directory
const context = require.context("controllers", true, /.js$/)
application.load(definitionsFromContext(context))

// Optional: Configure Stimulus for development (e.g., debugging)
application.debug = false
window.Stimulus = application

export { application }
