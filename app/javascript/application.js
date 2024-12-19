// Import Stimulus and Rails UJS
import { Application } from "@hotwired/stimulus"
import Rails from '@rails/ujs'
import * as bootstrap from "bootstrap"
import { definitionsFromContext } from 'stimulus/webpack-helpers'

// Initialize Stimulus
const application = Application.start()

// Load all Stimulus controllers from the controllers directory
const context = require.context("controllers", true, /.js$/)
application.load(definitionsFromContext(context))

// Configure Rails UJS
Rails.start()

// Optional: Configure Stimulus development experience
application.debug = false
window.Stimulus = application
